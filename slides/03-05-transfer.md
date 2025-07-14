---
layout: presentation
title: Transfer learning
---

class: center, middle
.title[Creative Coding and Software Design 3]
<br/><br/>
.subtitle[Week 7: Transfer learning]
<br/><br/><br/><br/><br/><br/>
.date[Jul 2025] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) + [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->
      
1. [Building knowledge](#building-knowledge)
2. [Deep Convolutional NNs](#deep-convolutional-nns)
3. [Transfer learning](#transfer-learning)
4. [Links - ml5.js](#links---ml5js)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]

---
name: building-knowledge
# Building knowledge

data |    ~  |   *measurements*
-|-|-
information  |  ~ |  data *interpreted* 
knowledge |  ~  | information *mapped*

--

all the above are **fallible** -- subject to *choices* and *noise*
- [Critical Perspectives on Computer Vision](https://slideslive.com/38923500/critical-perspectives-on-computer-vision) / Emily Denton
- [Introduction to Cultural Appropriation with Machine Learning](https://www.youtube.com/playlist?list=PLnV8Pp3XepxXh1zs2j6MOBRBiMBkvt2X0) / Parag Mital
- [On the Dangers of Stochastic Parrots: Can Language Models Be Too Big?](https://dl.acm.org/doi/abs/10.1145/3442188.3445922) / Bender, Gebru et al
 
---
## Types of knowledge in ML models

domain knowledge / "theory" "story"
- *appears in* algorithm design
- preprocessed features, model architecture, output postprocessing

--

inferred knowledge
- *appears in* dataset choice
- learning from data

--

inherited knowledge: transfer learning 

.right-column[
<img width="50%" src="../attachments/narration.jpg">
]

---

## Types of bias in ML models

domain bias
- *appears in* algorithm design
- preprocessed features, model architecture, output postprocessing

inferred bias
- *appears in* dataset choice
- learning from data

inherited bias: transfer learning 

<br/><br/>
- [interpretable ML](https://christophm.github.io/interpretable-ml-book/)

---
name: deep-convolutional-nns
class: left
# Deep Convolutional NNs

recap [neural networks](../slides/03-03-regression#artificial-neural-networks)

[<img width="100%" src="https://miro.medium.com/max/2000/1*vkQ0hXDaQv57sALXAJquxA.jpeg">](https://towardsdatascience.com/a-comprehensive-guide-to-convolutional-neural-networks-the-eli5-way-3bd2b1164a53)

--

<iframe width="100%" height="200" src="https://www.youtube.com/embed/Gu0MkmynWkw?start=36" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
name: transfer-learning
# Transfer learning

use a (trained) deep net as a feature extractor →

> → into a smaller (untrained) output net

[CNN-based guide](http://ml4a.github.io/guides/ConvnetOSC/) @ ml4a

[ml5.js example](https://editor.p5js.org/AndreasRef/sketches/BJkaHBMYm)

--

transferring knowledge
- from dataset to dataset 
- from task to task

---
## Video guides - ml5.js

<iframe width="100%" height="200" src="https://www.youtube.com/embed/eeO-rWYFuG0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<iframe width="100%" height="200" src="https://www.youtube.com/embed/kRpZ5OqUY6Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<iframe width="100%" height="200" src="https://www.youtube.com/embed/KTNqXwkLuM4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
name: links---ml5js
# Links - ml5.js

built on [tensorflow.js](https://www.tensorflow.org/js)

[Machine Learning for the Web](https://github.com/yining1023/machine-learning-for-the-web) course / Yining Shi

[feature extractor](https://learn.ml5js.org/#/reference/feature-extractor) ml5.js documentation

examples
- [feature extractor classification](https://editor.p5js.org/ml5/sketches/FeatureExtractor_Image_Classification)
- [KNN classification](https://editor.p5js.org/ml5/sketches/KNNClassification_Video)

more online ML
- [ml5.js train a neural network](https://youtu.be/8HEgeAbYphA)

more transfer learning
- [fastai course](https://course.fast.ai/Lessons/lesson4.html)