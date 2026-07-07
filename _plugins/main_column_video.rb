## Liquid tag used to add video that fits within the main column area.
## Usage {% maincolumnvideo 'path/to/video.mp4' 'This is the caption' %}
#
module Jekyll
  class RenderMainColumnVideoTag < Liquid::Tag

    require "shellwords"
    require "kramdown"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
      site = context.registers[:site]
      converter = site.find_converter_instance(::Jekyll::Converters::Markdown)

      baseurl = site.config["baseurl"].to_s
      path = @text[0].to_s
      caption = @text[1].to_s
      label = Kramdown::Document.new(caption, { remove_span_html_tags: true }).to_html
      label = converter.convert(label).gsub(/<\/?p[^>]*>/, "").chomp

      src = if path.start_with?("http://", "https://", "//")
        path
      else
        "#{baseurl}/#{path.sub(%r{\A/+}, "")}"
      end

      "<figure><video class='maincolumn' controls playsinline preload='metadata'><source src='#{src}' type='#{mime_type(path)}'></video><figcaption class='maincolumn-figure'>#{label}</figcaption></figure>"
    end

    def mime_type(path)
      case File.extname(path).downcase
      when ".webm"
        "video/webm"
      when ".ogg", ".ogv"
        "video/ogg"
      else
        "video/mp4"
      end
    end
  end
end

Liquid::Template.register_tag("maincolumnvideo", Jekyll::RenderMainColumnVideoTag)
