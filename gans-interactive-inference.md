---
layout: default
---

# GANs: interactive inference<!-- omit in toc -->

We use StyleGAN to generate images, guided in (almost) real time by projecting a live video feed into it.

## Setup

First of all, make sure you have the right work environment. You need a Windows machine{% sidenote 'linux' 'A similar process should work in Linux, although I haven’t tried it yet.'%} with a Nvidia GPU and Python 3.7{% sidenote 'py-spout' 'That is the last version of Python supported by the Spout library. If you don’t '%}