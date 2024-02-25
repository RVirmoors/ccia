---
layout: presentation
title: AI in Arts - practice and ethics
---

class: center, middle
.title[AI in Arts:<br/>practice and ethics]
<br/><br/>
.subtitle[[bit.ly/londoAI](https://bit.ly/londoAI)
<br/><img width=25% src="../attachments/londoAI/bitly_londoAI.png">
<br/><br/>SERALA // Londohome
<br/>grigore.burloiu@unatc.ro]
<br/><br/><br/><br/>
.date[Feb 2024]
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]

---
## AI & me

--

teaching / UNATC
- [Interactive Technologies for Performing and Media Arts](https://itpma.notion.site/) (ITPMA) M.A.
- [semester course](https://www.notion.so/itpma/Creative-Coding-and-Software-Design-3-c18bb7e2da834cabb027a681abefec2c) on Machine Learning for interactive arts

[<img width="100%" src="../attachments/londoAI/diana-cc.gif">](https://ars.electronica.art/who-owns-the-truth/en/clouded-consciousness/)

--

PhD / UPB
- *Dynamic Music Representations for Real-Time Performance*

- [<img width="40%" src="../attachments/londoAI/pandrea.png">](https://youtu.be/X1V-Z2dNiEo) <iframe width="40%" height="88" src="https://www.youtube.com/embed/EIS1bAxAiNc" title="rvdtw~" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->
      
1. [Definitions](#definitions)
2. [AI ethics](#ai-ethics)
3. [The Players](#the-players)
4. [AI Art in practice](#ai-art-in-practice)
5. [Reflections](#reflections)

---
name: definitions
# Definitions

--

Machine Learning ~ Deep Learning ~ [Artificial Intelligence](https://en.wikipedia.org/wiki/Mechanical_Turk)

--

"AI art" is not just art made with the help of AI.

--

<img width="75%" src="https://upload.wikimedia.org/wikipedia/en/a/a7/Google_Homepage.PNG">

--

[AI art](https://www.libreai.com/art-ai/a-short-overview-on-ai-art/) is:
- a subset of [*generative* art](https://en.wikipedia.org/wiki/Generative_art)
- sometimes [*interactive*](https://en.wikipedia.org/wiki/Interactive_art) (in training and/or execution)

---
## What does an AI model *do?*

mapping
- inputs → outputs

--

generation
- prompt → continuation

---
## Mapping examples

<div style="padding:36.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/19980514?h=c5cdf1479c" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

--

<iframe width="100%" height="300" src="https://www.youtube.com/embed/9Vu6tNmTRQY" title="Rodrigo Constanzo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
## Generation vs mapping

technically:
- input = history
- output = future

<br/>

we're mapping 
- the present state / recent memory / recorded history

onto 
- a future continuation

<br/><br/>

--

ethically?

---
name: ai-ethics
# AI ethics

.left-column[
<iframe width="100%" height="300" src="https://www.youtube.com/embed/OhCzX0iLnOc" title="The danger of AI is weirder than you think | Janelle Shane" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
]

.right-column[
[<img width="100%" height="250" src="../attachments/laion-ethics.png">](https://twitter.com/Abebab/status/1445723482231173120)
]

<iframe width="100%" height="200" src="https://www.youtube.com/embed/videoseries?list=PLnV8Pp3XepxXh1zs2j6MOBRBiMBkvt2X0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


---
## Building ML models

data |    ~  |   *measurements*
-|-|-
information  |  ~ |  data *interpreted* 
model |  ~  | information *mapped*

--

all the above are **fallible**: subject to *choices* and *noise*
- [Critical Perspectives on Computer Vision](https://slideslive.com/38923500/critical-perspectives-on-computer-vision) / Emily Denton
- [Reddit strikes $60M deal allowing Google to train AI on user posts](https://www.baltimoresun.com/2024/02/22/reddit-strikes-60m-deal-allowing-google-to-train-ai-models-on-its-posts-unveils-ipo-plans/)
- ___ more links
 
---
## Types of knowledge in ML models

domain knowledge
- *appears in* algorithm design
- *comes from* preprocessed features, model architecture, output postprocessing

--

inferred knowledge
- *appears in* dataset choice
- *comes from* learning from data

--

inherited knowledge
- transfer learning 

---

## Types of bias in ML models

domain bias
- *appears in* alogrithm design
- *comes from* preprocessed features, model architecture, output postprocessing

inferred bias
- *appears in* dataset choice
- *comes from* learning from data

inherited bias
- transfer learning

---
## Social cost

___ training 

https://en.wikipedia.org/wiki/ChatGPT#Training

___ replacing jobs 
- ismir job ad gen.ai 
- [mastering](https://www.facebook.com/groups/34526354913/posts/10161317376399914/?__cft__[0]=AZX6knJf6rlYg-Wp8QMIMxtQEiZMqGfmPJqHskJLfiVfG7G9FBemfiO48lVp7Y_gV22OgyhBm5J-G7R15EVNZuUEdZtEVPC101Tqf6Okk68sOvk9BaNX7gfSnTYf7cfL35vnqO_ntj1fE3czBRKSTHHh&__tn__=%2CO%2CP-R)
- background muzak gen.ai 

___ feeding the burnout society

lxl m39
- achievement society

---
## Material footprint

___ energy cost comparison

minipcs https://youtu.be/rGUnsiivqeU

google search query = 5W for 3min = 0.25Wh

gaming pc 300W https://youtu.be/_dMA35UO5eY

dl rig 2000W https://www.reddit.com/r/deeplearning/comments/106zlpz/building_a_4x_3090_machine_learning_machine_would/

https://github.com/TimDettmers/carbonneutral

training ChatGPT 1064MWh

chatgpt inference 260MWh / day or 9Wh / query (vs 0.25Wh / google search)

[AI and its carbon footprint: How much water does ChatGPT consume?](https://lifestyle.livemint.com/news/big-story/ai-carbon-footprint-openai-chatgpt-water-google-microsoft-111697802189371.html)

- [*between 2010 and 2018, data center energy usage has been fairly stable, accounting for around 1 to 2 percent of global consumption. ... His fear is that things might be different for AI precisely because of the trend for companies to simply throw bigger models and more data at any task.*](https://www.theverge.com/24066646/ai-electricity-energy-watts-generative-consumption)

[Power Hungry Processing: Watts Driving the Cost of AI Deployment?](https://arxiv.org/pdf/2311.16863.pdf)


---
name: the-players
# The Players

Google
- [Google Brain](https://en.wikipedia.org/wiki/Google_Brain) (2011) & [DeepMind](https://en.wikipedia.org/wiki/Google_DeepMind) (2014) - GAN, Transformer, ...
- 2015: [TensorFlow](https://en.wikipedia.org/wiki/TensorFlow)
- 2015: [DeepDream](https://www.tensorflow.org/tutorials/generative/deepdream)

<img style="width:50%"  src="../attachments/ml-deepdream-dog.png">

- 2016: [Magenta](https://magenta.tensorflow.org/) / <span style='color:aqua'>DDSP</span>
- 2017: [Colab](https://colab.google/): [interactive code](https://en.wikipedia.org/wiki/Project_Jupyter) + cloud GPUs + free

---
## The Players

Facebook / Meta AI
- 2016: [PyTorch](https://en.wikipedia.org/wiki/PyTorch) alternative to TensorFlow
- 2023: [LLaMA](https://en.wikipedia.org/wiki/LLaMA) alternative to GPT*

--

NVIDIA
- CUDA - parallel programming on GPUs
- 2019: [StyleGAN](https://thisxdoesnotexist.com/)

<img width="75%" src="https://github.com/NVlabs/stylegan/raw/master/stylegan-teaser.png">

---
## The Players

[OpenAI](https://openai.com/research/overview)
- 2018: [Generative Pretrained Transformer](https://openai.com/research/language-unsupervised) (GPT)
- 2020: [Jukebox](https://openai.com/research/jukebox)
  - [criticism](https://twitter.com/jesseengel/status/1256314503903318017?s=20) (Jesse Engel / Magenta)
- 2021: [DALL-E](https://openai.com/research/dall-e)
- 2022: [ChatGPT](https://en.wikipedia.org/wiki/ChatGPT)

[<img width="25%" src="../attachments/chatgpt-ethics.png">](../attachments/chatgpt-ethics.png)

---
## open source

artists as tool builders

billionaire companies built on open source - ACSL 

[lawyers&hackers](https://www.artistsandhackers.org/lawyers-hackers) @m23

--

https://hackaday.com/2023/05/05/leaked-internal-google-document-claims-open-source-ai-will-outcompete-google-and-openai/

holly herndon AI voice

https://github.com/MihaiTraista/bassoon-keyslaps-corpus

---
class: center
name: ai-art-in-practice
# AI Art in practice

<img width="80%" src="../attachments/londoAI/ethical-ai-meme.png">

https://youtu.be/t4FbknvszHU

---
## Pose estimation

<img width="50%" src="https://github.com/google-coral/project-posenet/raw/master/media/anonymizer.gif"><iframe width="50%" height="282" src="https://www.youtube.com/embed/dMZs04TzxUI" title="ircam RAVE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

--

<iframe width="100%" height="200" src="https://www.youtube.com/embed/Nim80x4S9y0" title="ochi" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

--

.left-column[
["anonymous and <br/> privacy-preserving"](https://github.com/google-coral/project-posenet)
]

--

.right-column[
gait surveillance
]

---
## let's make a dataset & play with it

.right-column[
<video preload="auto" width="100%" height="auto"  data-setup="{}" loop controls>
<source src="../attachments/londoAI/bassoon.mov" type="video/mp4" /></video>

- [Mihai Traista on SP-tools discord](https://discord.com/channels/1071587740384235571/1071875501406310500/1209506723220688927)
]

--

Reaper
- record sounds
- hit D to split
- batch export .wavs to folder

--

Max / [SP-tools](https://github.com/rconstanzo/sp-tools)
- sp.corpuscreate
- sp.corpusmatch

---
## Voice In My Head

*[Kyle McDonald](https://kylemcdonald.net/) & [Lauren Lee McCarthy](https://lauren-mccarthy.com/)*

<img width="100%" src="../attachments/londoAI/voice.png">
- https://lauren-mccarthy.com/Voice-In-My-Head

--

(self-)surveillance

[shared subjectivity](https://youtu.be/LWT99riOWeQ)

"algorithmic living"

data ethics

---
## Generate video

<iframe width="100%" height="300" src="https://www.youtube.com/embed/ryNtckMT49M" title="Pooky Park" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

--

[RunwayML](https://runwayml.com) . [Pika](https://pika.art/)

--

OpenAI "hold my beer": [Sora](https://openai.com/sora)

--

<iframe width="100%" height="150" src="https://www.youtube.com/embed/-MUEXGaxFDA?start=1686" title="AI is rotten" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
name: reflections
# Reflections

ethics is a continuum - where/how to draw the line? 

ethics is multidimensional 
- ___pe rand, 2 axe, 3 axe etc... 
- multe dimensiuni = ethics ML model sa ne zica ce e etic si ce nu - necesar pt alignment, general AI

AXE
- tool - instrument (extensie/dialog/struggle) - partener (cocreativity)

"unde se afla subiectul/dorintele care permit muzica interesanta?"

- mapping - generation

- plagiarism - metacreation

[Active Divergence with Generative Deep Learning](https://arxiv.org/pdf/2107.05599.pdf)

- usage - R&D

- contemplation - hyperactivity

- analog - digital
  - ML analog? biocomputing?

---

ne formam gust critic

nu repetam argumentele corporatiilor

https://terribleminds.com/ramble/2024/01/10/just-say-no-to-artificial-intelligence-in-your-creative-pursuits-please-jfc-wtaf/

allison parrish: art is the only ethical use of AI ___source??

---

<iframe width="100%" height="500" src="https://www.youtube.com/embed/iGJcF4bLKd4" title="Nick Cave" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
class: center, middle
## Thank you!

<br/><br/>[bit.ly/londoAI](https://bit.ly/londoAI)
<br/><img width=50% src="../attachments/londoAI/bitly_londoAI.png">
<br/><br/>grigore.burloiu@unatc.ro
<br/>[itpma.notion.site](https://itpma.notion.site)
<br/>[rvirmoors.github.io](https://rvirmoors.github.io)