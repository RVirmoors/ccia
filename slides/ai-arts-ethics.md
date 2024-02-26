---
layout: presentation
title: AI in Arts - practice and ethics
---

class: center, middle
.title[AI in Arts:<br/>practice and ethics]
<br/><br/>
.subtitle[[bit.ly/londoAI](https://bit.ly/londoAI)
<br/><img width=25% src="../attachments/londoAI/bitly_londoAI.png">
<br/>SERALA // Londohome
<br/>grigore.burloiu@unatc.ro]
<br/><br/><br/>
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

Machine Learning ~ Deep Learning ~ [Artificial Intelligence](https://en.wikipedia.org/wiki/Mechanical_Turk)

--

"AI art" is not just art made with the help of AI.

--

<img width="66%" src="https://upload.wikimedia.org/wikipedia/en/a/a7/Google_Homepage.PNG">

--

[AI art](https://www.libreai.com/art-ai/a-short-overview-on-ai-art/) is:
- a subset of [*generative* art](https://en.wikipedia.org/wiki/Generative_art)
- sometimes [*interactive*](https://en.wikipedia.org/wiki/Interactive_art) (in training and/or execution)

---
## What does an AI model *do?*

.right-column[
  <img width="100%" src="../attachments/ann-layers.png">
]


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

<br/><br/><br/><br/><br/><br/><br/>
- [Critical Perspectives on Computer Vision](https://slideslive.com/38923500/critical-perspectives-on-computer-vision) / Emily Denton
- [Whose ground truth? accounting for individual and collective identities underlying dataset annotation](https://arxiv.org/pdf/2112.04554.pdf)
- [Microsoft lays off AI ethics and society team](https://www.theverge.com/2023/3/13/23638823/microsoft-ethics-society-team-responsible-ai-layoffs)
- [Reddit strikes $60M deal allowing Google to train AI on user posts](https://www.baltimoresun.com/2024/02/22/reddit-strikes-60m-deal-allowing-google-to-train-ai-models-on-its-posts-unveils-ipo-plans/)

 
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

training large models
- crowdsourcing data
  - privacy
  - opt-in
- addressing bias
  - ChatGPT used [Kenyan workers](https://time.com/6247678/openai-chatgpt-kenya-workers/) for ["traumatizing" work](https://www.theguardian.com/technology/2023/aug/02/ai-chatbot-training-human-toll-content-moderator-meta-openai)

<img style="width:80%"  src="../attachments/londoAI/kenya.png">

---
## Social cost

[replacing jobs](https://en.wikipedia.org/wiki/Technological_unemployment) 

<img style="width:100%"  src="../attachments/londoAI/job.png">

--

[<img style="width:50%"  src="../attachments/londoAI/mastering-post.png"><img style="width:50%"  src="../attachments/londoAI/mastering-goosman.png">](https://www.facebook.com/groups/34526354913/posts/10161317376399914/?__cft__[0]=AZX6knJf6rlYg-Wp8QMIMxtQEiZMqGfmPJqHskJLfiVfG7G9FBemfiO48lVp7Y_gV22OgyhBm5J-G7R15EVNZuUEdZtEVPC101Tqf6Okk68sOvk9BaNX7gfSnTYf7cfL35vnqO_ntj1fE3czBRKSTHHh&__tn__=%2CO%2CP-R)

---
## Social cost

[<img style="width:100%"  src="../attachments/londoAI/strike.png">](https://www.theguardian.com/culture/2023/oct/01/hollywood-writers-strike-artificial-intelligence)

“AI is under control of the writers, not under control of the studios. It’s not to be used as an automation technology. It’s complementary to humans.”
- Simon Johnson, MIT
---
## Social cost

feeding the achievement/burnout society

<img style="width:100%"  src="../attachments/londoAI/vita.png">

"The loss of the faculty of contemplation affects our relation to language. Dazed by the rush of information and communication we move away from **poetry** as the contemplation of language, and begin even to hate it. When language is nothing but work and the production of information, it loses its radiance. It becomes worn out and **keeps producing the same**."
- Byung-Chul Han, Vita Contemplativa

---
## Material footprint

Raspberry Pi 5 single-board computer: 6W

[<img style="width:100%"  src="../attachments/londoAI/raspi-6w.png">](https://youtu.be/rGUnsiivqeU)

google search query = 5W for 3min = 0.25Wh

---
## Material footprint

N100 mini PC: 30W

[<img style="width:100%"  src="../attachments/londoAI/n100.png">](https://youtu.be/rGUnsiivqeU)

---
## Material footprint

N100 mini PC: 30W

[<img style="width:100%"  src="../attachments/londoAI/n100-r.png">](https://youtu.be/rGUnsiivqeU)

---
## Material footprint

i5 desktop PC: 65W

[<img style="width:100%"  src="../attachments/londoAI/i5.png">](https://youtu.be/rGUnsiivqeU)

---
## Material footprint

i5 desktop PC: 65W

[<img style="width:100%"  src="../attachments/londoAI/i5-r.png">](https://youtu.be/rGUnsiivqeU)

---
## Material footprint

gaming PC: 300W

[<img style="width:100%"  src="../attachments/londoAI/gaming.png">](https://youtu.be/rGUnsiivqeU)

---
## Material footprint

gaming PC: 300W

[<img style="width:100%"  src="../attachments/londoAI/gaming-r.png">](https://youtu.be/rGUnsiivqeU)

---
## Material footprint

deep learning rig: 2000W

[<img style="width:50%"  src="../attachments/londoAI/dl-rig.png">](https://www.reddit.com/r/deeplearning/comments/106zlpz/building_a_4x_3090_machine_learning_machine_would/)

---
## Material footprint

deep learning rig: 2000W

[<img style="width:50%"  src="../attachments/londoAI/dl-rig-r.png">](https://www.reddit.com/r/deeplearning/comments/106zlpz/building_a_4x_3090_machine_learning_machine_would/)

https://github.com/TimDettmers/carbonneutral

---
## Material footprint

training ChatGPT: 1064MWh

chatgpt inference: 260MWh / day or 9Wh / query 
- (vs 0.25Wh / google search)

<img style="width:100%"  src="../attachments/londoAI/datacentre.png">

.left-column[
[AI and its carbon footprint: How much water does ChatGPT consume?](https://lifestyle.livemint.com/news/big-story/ai-carbon-footprint-openai-chatgpt-water-google-microsoft-111697802189371.html)
]

.right-column[
[Power Hungry Processing: Watts Driving the Cost of AI Deployment?](https://arxiv.org/pdf/2311.16863.pdf)
]

- "between 2010 and 2018, data center energy usage has been fairly stable, accounting for around 1 to 2 percent of global consumption. ... things might be different for AI precisely because of the trend for companies to simply throw bigger models and more data at any task." [source](https://www.theverge.com/24066646/ai-electricity-energy-watts-generative-consumption)



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

--

does not guarantee transparency or fairness → [Explainable AI](https://christophm.github.io/interpretable-ml-book/)

--

artists as tool builders

[<img width="100%" src="../attachments/londoAI/hollyplus.png">](https://holly.mirror.xyz/54ds2IiOnvthjGFkokFCoaI4EabytH9xjAYy1irHy94)

--

billionaire companies built on open source → [ACSL](https://anticapitalist.software/) 
- [lawyers&hackers](https://www.artistsandhackers.org/lawyers-hackers) podcast @m23

--

[Google: Open Source AI Will Outcompete Google And OpenAI](https://hackaday.com/2023/05/05/leaked-internal-google-document-claims-open-source-ai-will-outcompete-google-and-openai/)

---
class: center
name: ai-art-in-practice
# AI Art in practice

[<img width="80%" src="../attachments/londoAI/ethical-ai-meme.png">](https://youtu.be/t4FbknvszHU)

---
## <span style='color:aqua'>make a dataset & play with it</span>

.right-column[
<video preload="auto" width="100%" height="auto"  data-setup="{}" loop controls>
<source src="../attachments/londoAI/bassoon.mov" type="video/mp4" /></video>

- [Mihai Traista on SP-tools discord](https://discord.com/channels/1071587740384235571/1071875501406310500/1209506723220688927)
- https://github.com/MihaiTraista/bassoon-keyslaps-corpus
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
## Voice In My Head

[Kyle McDonald](https://kylemcdonald.net/) & [Lauren Lee McCarthy](https://lauren-mccarthy.com/)

[<img width="100%" src="../attachments/londoAI/voice.png">](https://lauren-mccarthy.com/Voice-In-My-Head)

--

(self-)surveillance

[shared subjectivity](https://youtu.be/LWT99riOWeQ)

"algorithmic living"

data ethics

---
## Generating video

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

.right-column[
  [<img width="100%" src="https://thebulletin.org/wp-content/uploads/2022/10/DALL%C2%B7E-2022-10-25-13.01.17-A-nineteenth-century-engraving-of-artists-rioting-and-smashing-computer-monitors-with-hammers.png">](https://thebulletin.org/2022/10/is-ai-arts-true-foe/)
]

--

train your eye for AI

--

consider the balance of power

--

<br/><br/>

ethics is a continuum
- where & how to draw the line?

<br/><br/><br/><br/><br/><br/>

- [Just Say No to Artificial Intelligence In Your Creative Pursuits](https://terribleminds.com/ramble/2024/01/10/just-say-no-to-artificial-intelligence-in-your-creative-pursuits-please-jfc-wtaf/#comment-1678765)
- [Active Divergence with Generative Deep Learning](https://arxiv.org/pdf/2107.05599.pdf)

---
class: center
## ethics is multidimensional 

<img width="100%" src="../attachments/londoAI/1W.png">

---
class: center
## ethics is multidimensional 

<img width="100%" src="../attachments/londoAI/2plag.png">

---
class: center
## ethics is multidimensional

<img width="100%" src="../attachments/londoAI/3map.png">

---
class: center
## ethics is multidimensional 

<img width="100%" src="../attachments/londoAI/4tool.png">

---
class: center
## ethics is multidimensional 

<img width="100%" src="../attachments/londoAI/5user.png">

---
class: center
## ethics is multidimensional 

<img width="100%" src="../attachments/londoAI/6hyper.png">

---
class: center
## a job for machine ethics :)

<img width="100%" src="../attachments/londoAI/7all.png">

---
class: center, middle
## coda

---
class: center, middle

<img width="50%" src="../attachments/londoAI/aparrish.png">

*Art is the only ethical use of AI.*

- [Allison Parrish](https://www.decontextualize.com/), 
- quoted by [Claire Evans (YACHT)](https://youtu.be/udTZCx5cALg) 
- via [Code as Creative Medium](https://mitpress.mit.edu/9780262542043/code-as-creative-medium/)

---
class: center, middle

<iframe width="100%" height="500" src="https://www.youtube.com/embed/iGJcF4bLKd4" title="Nick Cave" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
class: center, middle
## Thank you!

<br/><br/>[bit.ly/londoAI](https://bit.ly/londoAI)
<br/><img width=50% src="../attachments/londoAI/bitly_londoAI.png">
<br/>grigore.burloiu@unatc.ro
<br/>[itpma.notion.site](https://itpma.notion.site)
<br/>[rvirmoors.github.io](https://rvirmoors.github.io)