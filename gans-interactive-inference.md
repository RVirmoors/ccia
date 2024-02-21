---
layout: default
---

# GANs: interactive inference<!-- omit in toc -->

We use StyleGAN to generate images, guided in (almost) real time by projecting a live video feed into it.

[Setup](#setup) . [Interactive projection](#interactive-projection) . [Going further](#going-further)

## Setup

Note: preparing a DL pipeline (even for fun) takes a while, so set aside a decent amount of time, patience, and hard drive space.

Let's start with basic requirements. You need a Windows machine{% sidenote 'linux' 'A similar process should work in Linux, although I haven’t tried it yet.'%} with a Nvidia GPU and Python 3.9{% sidenote 'py-spout' 'Previously, the Spout-for-Python library supported Python 3.7 at the latest, but [this more recent fork of the library](https://github.com/marenz2569/Spout-for-Python) works well with v3.9'%} 64 bit.

Here we will use `pip` and `venv` but you can also install [miniconda](https://docs.conda.io/en/latest/miniconda.html) and then run `conda` to manage virtual environments and to install `torch` and other libraries.

Open a `cmd` terminal in an empty folder and run `python` followed by `quit()`. If the heading mentions `3.7` and `64 bit` you're in luck: you can create a virtual environment by typing `python -m venv venv`. Otherwise find or [download](https://www.python.org/downloads/release/python-379/) a Python 3.7 executable and use it for your venv:

```
> c:/path/to/python37/python -m venv venv
> cd venv/Scripts
> activate
> cd ../..
```

From this point onwards, everything must happen inside your `(venv)`.

Next, check that you're running the appropriate CUDA version, by executing `nvidia-smi` in the terminal.
[StyleGAN3](https://github.com/dvschultz/stylegan3) requires CUDA 11.1 or later. The current (Dec 2021) version of PyTorch uses CUDA 10 or 11, so make sure you select the appropriate version to download [on their site](https://pytorch.org/get-started/locally/).

Now with PyTorch installed, you can check that it can leverage your GPU through CUDA:{% sidenote 'novenv' 'Notice I wasn’t in a `venv` here yet, just using the Python+PyTorch I have in my global environment. But you need to check the components in your `venv`.'%}
{% fullwidth '../attachments/torch-cuda.png' '' %}

Finally, let's download an expanded StyleGAN3 code repo from [PDillis](https://github.com/PDillis/stylegan3-fun):
```
> git clone https://github.com/PDillis/stylegan3-fun.git
```
If you have `conda` you can follow the instructions in the [readme](https://github.com/PDillis/stylegan3-fun#readme) and use it to create your environment, but for our purposes it's enough to just install the modules using `pip`:
```
> pip install click requests scipy ninja imageio imageio-ffmpeg tdqm
```

Since StyleGAN needs to compile stuff on the fly, you need to set up Visual Studio and point to it. You can choose to just install Build Tools, or [get](https://visualstudio.microsoft.com/vs/) the whole VS Community package. Then simply find and run `"C:\Program Files (x86)\Microsoft Visual Studio\<VERSION>\Community\VC\Auxiliary\Build\vcvars64.bat"`

Now you can try out a basic image generation command:{% sidenote 'error' 'In my case I got a `LNK1104` error for a missing `python37.lib`... I had to locate it in `%appdata%/../Local/Programs/Python/Python37/libs` and copy it to one of the `/LIBPATH:` folders, like my `venv/Scripts/libs`.'%}
```
> cd stylegan3-fun
> python gen_images.py --outdir=out --trunc=1 --seeds=0-4 --network=https://api.ngc.nvidia.com/v2/models/nvidia/research/stylegan3/versions/1/files/stylegan3-r-afhqv2-512x512.pkl
```
Check the `stylegan3/out` folder and you should see 5 exported images.

Now let's do something silly and project the cat face into the human faces dataset:
{% marginfigure 'cat' '../attachments/ffhq-cat.jpg' 'Meow.' %}
```
> python projector.py --target=out/seed0002.png --project-in-wplus --save-video --num-steps=1000 --network=https://api.ngc.nvidia.com/v2/models/nvidia/research/stylegan2/versions/1/files/stylegan2-ffhq-512x512.pkl
```

The first time you run the projector, it might take a long time (1h30m in my case) since it needs to download pre-trained pickles [from](https://catalog.ngc.nvidia.com/orgs/nvidia/teams/research/models/stylegan2/files) [NVIDIA](https://catalog.ngc.nvidia.com/orgs/nvidia/teams/research/models/stylegan3/files). While you're waiting, why not [do some background reading](https://amarsaini.github.io/Epoching-Blog/jupyter/2020/08/10/Latent-Space-Exploration-with-StyleGAN2.html).

As we can see on the right, it turns out there's quite catty figures to be found in the FFHQ latent space. So far so good, let's start adding interactivity!

## Interactive projection

Again, here is what we're going for: taking a live video feed and *projecting* it, i.e. looking for the image closest to the running input, inside a StyleGAN model. Obviously a model trained on human faces should produce the most "natural" results, but you're free to use anything!

Now that we've got `stylegan3-fun` up and running, let's leave it alone and refer to it when we need to. Go back to the main project folder, and then install the [Spout-for-Python](https://github.com/marenz2569/Spout-for-Python) library{% sidenote 'spout' 'Spout allows us to send images between different software. Of course it would be preferable to have everything running GPU-optimised code in e.g. David Braun’s [TouchDesigner](https://dirt.design/portfolio/pytorch-top/) [work](https://dirt.design/portfolio/u-2-net-salient-object-detection/). For now we have to settle with Spout-for-Python just handling (CPU-only) NumPy arrays.'%} and its dependencies.
```
> cd ..
> git clone https://github.com/Ajasra/Spout-for-Python.git
> pip install pygame pyopengl
```

If you've got a webcam, you can get away without using Spout for input (like we did in the [image classification notebook](https://github.com/RVirmoors/cc1/blob/master/ml/python-weki/fastai-classify.ipynb)), but you will still need it for the realtime output buffer. From `Spout-for-Python`, move the subfolders `Library` and `SpoutSDK` directly to your project folder, next to `stylegan3-fun`. 

An optional step here is to first preprocess your input to have the image center on the detected face. Especially if using the FFHQ pretrained model, this produces the best looking results. I've adapted the [align_face.py](https://github.com/RVirmoors/cc1/blob/master/ml/stylegan3/align_face.py) script [from here](https://github.com/AmarSaini/Epoching_StyleGan2_Setup) and [connected it to Spout](https://github.com/RVirmoors/cc1/blob/master/ml/stylegan3/align.py)... it works, but it's quite slow{% sidenote 'pillow' 'due to the face detection itself plus a bunch of [Pillow](https://pillow.readthedocs.io/en/stable/)-based image processing. These could maybe be streamlined to all-PyTorch GPU code, but I’m not the one to do it.'%} so in my final script it's commented out.

We're now finally ready to create a new `.py` source file and copy/adapt what we need, mainly from [stylegan3-fun/projector.py](https://github.com/PDillis/stylegan3-fun/blob/main/projector.py). Start by making sure we can import the required modules:
```python
import os
import sys
sys.path.append('stylegan3-fun')
```

With loading modules, you can go two ways: copy all `import` statements straight (which might mean you need to `pip install` some which you end up not using) or include them as they are needed.

You can then read the `projector.py` file starting at the end, where we have the function that's to be called when the script is run:
```python
if __name__ == "__main__":
    run_projection()  # pylint: disable=no-value-for-parameter
```
The basic program structure is: `run_projection()` calls `project()`, which includes a `for` loop that runs `num_times` times. You need to modify this code so that all of the setup stuff{% sidenote 'setup' 'some of which is located in `run_projection()`, and some in `project()`.'%} is separate from an endless `while True` loop, which (unlike the existing `for` loop) needs to constantly load a target image, and display images as they are generated -- on the other hand you don't need to save the history of the trajectory, and there's a lot of extraneous code that you can simply discard.

An important decision is whether, and where, to fix the learning rate. Since our target is potentially always changing, we probably don't want a steadily decreasing LR. The easy solution is to fix it, but there might be smarter ways to handle this issue.

Then, as long as you read carefully and understand the essentials, you should find everything you need inside `projector.py`. My resulting script is [here](https://github.com/RVirmoors/cc1/blob/master/ml/stylegan3/projectRT.py). By default it runs the pretrained StyleGAN2 FFHQ-512 model (inference runs much faster on SG2 models than SG3), but you can change it with the `--network` argument.

Here's a quick demo... since I didn't have any relevant materials on hand, I just used some stock TouchDesigner images.

<iframe width="100%" height="500" src="https://www.youtube.com/embed/uUguphZs7nE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Going further

I've already alluded to several directions for inquiry above, but let's think of what else you could do. First, once you've got the code working, you might ask yourself: do we really need to perform inference in the `G` generator twice, once to compute the loss for optimisation, and once at the end to display the generated image? Try instead to display the first synthesized image,{% sidenote 'hint' 'Hint: look in [gen_utils](https://github.com/PDillis/stylegan3-fun/blob/main/torch_utils/gen_utils.py)`.w_to_img()` to see how to convert from a tensor to a displayable NumPy array.'%} or try to just synthesize the optimised `w_opt` directly (without adding noise), see what happens and try to explain why.

Moving on, there are other `stylegan3-fun` tools which you can leverage. The [visualiser](https://github.com/PDillis/stylegan3-fun/blob/main/visualizer.py) is way more fun than an analysis tool should be, and [style-mixing](https://github.com/PDillis/stylegan3-fun/blob/main/style_mixing.py) is a nice way to blend between generation and style transfer. Again, do [your](https://amarsaini.github.io/Epoching-Blog/jupyter/2020/08/10/Latent-Space-Exploration-with-StyleGAN2.html) [reading](https://lambdalabs.com/blog/stylegan-3/) first, but then don't be afraid to jump in!

Moreover, all of these can be guided interactively through OSC. You might, for instance, adjust the learning rate via an external output, or you could add to `w_opt` a latent vector that's been mapped (maybe to live audio features?) using something like Wekinator, like I show [here](https://rvirmoors.github.io/2021/01/04/realtime-stylegan/).

Finally, this experience should have given you the confidence to dissect and adapt pretty much any generative net out there. Writing this at the end of 2021 I have no idea what next year's trends will bring, but this general approach should still apply.