source 'https://rubygems.org'

gem "jekyll", ">= 4.3.2"

gem 'rouge'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
    gem "tzinfo"
    gem "tzinfo-data"
  end
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

group :jekyll_plugins do
    gem "jekyll-feed", "~> 0.6"
  end

# kramdown v2 ships without the gfm parser by default. If you're using
# kramdown v1, comment out this line.
gem "kramdown-parser-gfm"

gem "webrick"