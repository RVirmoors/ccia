---
layout: presentation
title: PyTorch basics
---

class: center, middle
.title[Creative Coding and Software Design 3]
<br/><br/>
.subtitle[Week 7: PyTorch basics]
<br/><br/><br/><br/><br/><br/>
.date[Dec 2021] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->
      
1. [Training](#training)
2. [Links](#links)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]

---
name: training
# Training

gradient descent

--

*stochastic* g. d. = not over the whole batch/dataset, but random *minibatches*
- https://github.com/fastai/course-v3/blob/master/nbs/dl1/lesson2-sgd.ipynb

if training fails:
- check your data: redundant, noisy?
- check params: learning rate & no. of epochs
- check your data!!! do you have enough? is it representative?
- get more data, just in case :)

https://twitter.com/karpathy/status/1299921324333170689?s=20


---
name: links  
class: left
# Links

https://github.com/drscotthawley/DLAIE
