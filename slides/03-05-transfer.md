---
layout: presentation
title: Transfer learning
---

class: center, middle
.title[Creative Coding and Software Design 3]
<br/><br/>
.subtitle[Week 5: Transfer learning]
<br/><br/><br/><br/><br/><br/>
.date[Nov 2021] 
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
4. [More online ML](#more-online-ml)

        
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
 
---
## Types of knowledge in ML models

domain knowledge
- *appears in* alogrithm design
- *comes from* preprocessed features, model architecture, output postprocessing

--

inferred knowledge
- *appears in* dataset choice
- *comes from* learning from data

--

inherited knowledge: transfer learning 

---

## Types of bias in ML models

domain bias
- *appears in* alogrithm design
- *comes from* preprocessed features, model architecture, output postprocessing

inferred bias
- *appears in* dataset choice
- *comes from* learning from data

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

https://ml4a.github.io/guides/ConvnetOSC/


---
# More online ML

https://youtu.be/8HEgeAbYphA