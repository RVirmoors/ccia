---
layout: presentation
title: Intro to Machine Learning for Interactive Arts
---

class: center, middle
.title[Creative Coding and Software Design 3]
<br/><br/>
.subtitle[Intro to Machine Learning for Interactive Arts]
<br/><br/><br/><br/><br/><br/>
.date[Oct 2022] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->
      
1. [Semester overview](#semester-overview)
2. [Machine Learning](#machine-learning)
3. [What we cover](#what-we-cover)
4. [Tools](#tools)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]
        
---
name: semester-overview  
class: left
# Semester overview

- 2h lab: new concepts in practice
- 1h lecture: theory, discussion

[Syllabus](https://itpma.notion.site/itpma/Creative-Coding-and-Software-Design-3-c18bb7e2da834cabb027a681abefec2c)

[Classroom](https://classroom.google.com/)

---
name: machine-learning
class: left
# Machine Learning

*learn* structure / functionality **from data**

<img style="width:75%"  src="../attachments/ml-pipeline.png">

--

terminology :(

---
class: center

<img style="width:50%"  src="../attachments/ml-relu-meme.png">

---
## ML modern history

since the 2010s: AI ~ ML ~ (deep) artificial neural networks

- historically not the case!
- 2012: [deep NNs win ImageNet competition](https://en.wikipedia.org/wiki/AlexNet)
- 2013: [word2vec maps word associations](https://en.wikipedia.org/wiki/Word2vec)
- 2015-17: [superhuman performance in the game of Go](https://en.wikipedia.org/wiki/AlphaGo)

--

"we should have been using neural networks all along!"

--

WRONG! -[Tomas Mikolov](https://cs.nyu.edu/~welleck/episode25.html)

<iframe width="190" height="80" src="https://www.youtube.com/embed/Rc9e1WWWo5M" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

## ML for art

2009: [Wekinator](http://www.wekinator.org/)

<img style="width:50%"  src="https://fablab.ruc.dk/content/images/2020/05/training.gif">

- (from [fablab](https://fablab.ruc.dk/hand-gesture-recognition-using-handpose-osc-and-wekinator/))

---

## DL for art

2015: [DeepDream](https://www.tensorflow.org/tutorials/generative/deepdream)

<img style="width:50%"  src="../attachments/ml-deepdream-dog.png">

[ML art](https://www.libreai.com/a-short-overview-on-ai-art/) is:
- a subset of *generative* art
- sometimes *interactive* (in training and/or execution)

[ethical questions](https://www.youtube.com/watch?v=NMYTALX9kEw)

---

## ML / DL myths

| **myth** (*you don't need*) |&nbsp;&nbsp; | **truth** (*you can*) |
|-------------------|-|-------|
| expensive computers |&nbsp;&nbsp; | use machines in the cloud for free |
| math and coding |&nbsp;&nbsp; | do a lot with user-friendly tools |
| lots of data |&nbsp;&nbsp; | start from pre-trained models |
| lots of time |&nbsp;&nbsp; | do inference in (almost) real time |

(adapted from [course.fast.ai](https://course.fast.ai/#Is-this-course-for-me?))

---

## Getting into ML: two approaches

classic: bottom-up
- [A. Ng's MOOC](https://www.coursera.org/learn/machine-learning), most textbooks
- (can lead to [burnout](https://www.reddit.com/r/MachineLearning/comments/73n9pm/d_confession_as_an_ai_researcher_seeking_advice/))

maker: top-down
- [R. Fiebrink’s MOOC](https://www.kadenze.com/courses/machine-learning-for-musicians-and-artists-v/) / [mimic](https://mimicproject.com/guides/kadenze)
- [fast.ai](https://course.fast.ai/) / [fastbook](https://github.com/fastai/fastbook)
- [ml4a](https://ml4a.github.io/classes/itp-F18/), [ml4web](https://github.com/yining1023/machine-learning-for-the-web), [dl4music](http://www.jordipons.me/apps/teaching-materials/) …

<iframe width="350" height="200" src="https://www.youtube.com/embed/qMIdUYL7YLQ?start=480" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
name: what-we-cover
# What we cover

| **interactive ML** |&nbsp;&nbsp; | **Deep Learning** |
|-------------------|-|-------|
| small models (few layers) |&nbsp;&nbsp; | big models (many layers) |
| fast training (local CPU) |&nbsp;&nbsp; | slow training (GPU / cloud) |
| analysis, action |&nbsp;&nbsp; | analysis, generation  |
| [regression synth](https://mimicproject.com/code/8de3cbbe-b7c6-d79f-65fa-42fd1aa43a26) |&nbsp;&nbsp; | [EbSynth](https://ebsynth.com/) |

DL can also be part of an interactive system:
- almost* real-time inference 
- *transfer learning*

--

*2022 update: faster-than-realtime inference is common (on [GPU](https://huggingface.co/spaces/openai/whisper)**)

--

**or even [CPU](https://github.com/acids-ircam/rave_vst)

---

## Interactive Machine Learning

first ~40% of the class

human-in-the-loop (training and inference)

[Wekinator](https://twitter.com/search?q=wekinator), [Sound Control](http://soundcontrolsoftware.com/), [InteractML](https://interactml.com/) (Rebecca Fiebrink, since 2008!)

[Wolf3D](https://twitter.com/stoj_io/status/840222647489318914) sound to action

[Poetry in Motion](https://rednoise.org/rita/gallery/PoetryInMotion/): movement to text generation

---

## Why use iML?

--

mapping / control design
- by example / modelling     (vs fixed rules)

--

dimensions
- 1 : 1   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        1 : many   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        many : 1   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       many : many

--

workflow
- experimental, iterative

--

creating something truly *new*?

---
name: tools       
class: left
# Tools

[Wekinator](http://www.wekinator.org/) 
- [ml.star](https://www.benjamindaysmith.com/#/ml-machine-learning-toolkit-in-max/)
- [FluCoMa](https://flucoma.org/)
- [MuBu for Max](https://forum.ircam.fr/projects/detail/mubu/)  


- [fastai](https://docs.fast.ai/) / [PyTorch](https://pytorch.org/)
- [ml5](https://ml5js.org/) / [Tensorflow.js](https://teachablemachine.withgoogle.com/)
- [Runway](https://runwayml.com/)
- [MASOM](https://github.com/ktatar/MASOM)

[Google](https://github.com/dvschultz/ml-art-colabs) [Colab](https://ljvmiranda921.github.io/notebook/2021/08/11/vqgan-list/)


See more [resources](../resources#machine-learning).

---
## Follow

Twitter: [Andreas Refsgaard](https://twitter.com/AndreasRef), [Max Woolf](https://twitter.com/minimaxir), [vadim epstein](https://twitter.com/eps696), [Adverb](https://twitter.com/advadnoun), [Emily Short](https://twitter.com/emshort), [Chris Donahue](https://twitter.com/chrisdonahuey), [AK](https://twitter.com/ak92501), [Janelle Shane](https://twitter.com/JanelleCShane), [Rebecca Fiebrink](https://twitter.com/RebeccaFiebrink), [Parag K. Mital](https://twitter.com/pkmital), [Jesse Engel](https://twitter.com/jesseengel), [dadabots](https://twitter.com/dadabots), [Kyle McDonald](https://twitter.com/kcimc), [Memo Akten](https://twitter.com/memotv)...

Lectures/MOOCs: [Rebecca Fiebrink](https://www.kadenze.com/courses/machine-learning-for-musicians-and-artists/info), [Gene Kogan](https://ml4a.net/) [+](https://www.youtube.com/playlist?list=PLaN6Cxwpu9UKR2mPc39bZEJoyAoCwRw_q), [Yining Shi](https://github.com/yining1023/machine-learning-for-the-web), [Artificial Images](https://www.youtube.com/channel/UCaZuPdmZ380SFUMKHVsv_AA), [Daniel Shiffman](https://www.youtube.com/c/TheCodingTrain)