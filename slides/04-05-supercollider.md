---
layout: presentation
title: SuperCollider basics
---

class: center, middle
.title[Interactive Music Systems]
<br/><br/>
.subtitle[Week 5: SuperCollider basics]
<br/><br/><br/><br/><br/><br/>
.date[Nov 2021] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) + [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★     <!-- omit in toc -->

1. [Live coding](#live-coding)
2. [What is SC?](#what-is-sc)
3. [Objects and messages](#objects-and-messages)
4. [Assignment](#assignment)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]

---
name: live-coding
# Live coding 

.right-column[
  <iframe width="100%" height="200" src="https://www.youtube.com/embed/-QY2x6aZzqc?start=685" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
]

[list of live coding languages](https://docs.google.com/spreadsheets/d/1zrC97i1DT_5B1-XG3RhZAnTTpBLQHfbeLimceKcikeY/edit?usp=sharing)

[toplap](https://toplap.org/) site

[awesome-livecoding](https://github.com/toplap/awesome-livecoding)

[how to live code](https://theseanco.github.io/howto_co34pt_liveCode) guide / co34pt

---
name: what-is-sc
# What is SC?

*a platform for audio synthesis and algorithmic composition, used by musicians, artists, and researchers working with sound*

**scsynth**    |     real-time audio engine         |    / server
-|-|-
**sclang**    |    interpreted programming language  |   / client
**scide**     |   editing env for sclang

--

sclang → OSC → scsynth


---
## Key strengths

.right-column[
  <iframe width="100%" height="200" src="https://www.youtube.com/embed/dbSTq_UsFK4?start=986" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
]

algorithmic composition

--

interactive sound design

--

live coding

---
name: objects-and-messages
# Objects and messages

**everything** in SClang is an object
- objects belong to *classes*
- objects are affected by *methods* ~ they receive *messages*

--

&nbsp; | **syntax** | **example**
:- | - | -
**receiver notation** &nbsp;&nbsp;  |   &nbsp;  `object.message(args)`  &nbsp;  |   &nbsp; `“hello”.postln;`
**functional notation** &nbsp;&nbsp; | &nbsp;  `message(object, args)`  &nbsp;   |  &nbsp; `postln(“hello”);`


---
## sclang basic syntax

brackets
- `(, )`    code blocks, to be evaluated in one pass
- `{, }`    functions (objects in class Function)
  - function params:         
    - `|a = 440, b = 1|`  
    - `arg a = 440, b = 1;`
- `[, ]`    sets (in class List or Array)
  - quick clone to array:    
    - `var sig; sig ! 2`  
    - `var sig; sig.dup(2) // creates [sig, sig]`

comments
- `// one line`
- `/* multiple lines */`

quotes
- `‘foo’`    a unique name (equiv. to `/foo`) in class `Symbol`
- `“bar”`    a string of characters, class `String`

---
## scide basics

**Shift+Enter**: evaluate

double-click on parentheses: select entire `{ codeblock }`

indentation: 
- automatic (**TAB**) 
- manual (**Shift+TAB**)

start audio: 
- `s.boot` 
- **Ctrl+B**  
- right-click on Server > Boot Server

kill all sound: **Ctrl+.**

documentation: **Ctrl+D**

---
## Example: Terry Riley - *In C*

n *agents* playing *patterns*
- each pattern: one of 53 melodic figs, to be looped
- agents should stay within max. 3 patterns of each other

<iframe width="100%" height="400" src="https://www.youtube.com/embed/lJPJywWfyGo?start=39" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
## Links

[getting started](https://doc.sccode.org/Tutorials/Getting-Started/00-Getting-Started-With-SC.html) tutorial

[video tutorials](https://www.youtube.com/playlist?list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC) by [Eli Fieldsteel](https://www.youtube.com/channel/UCAf4fP8QzKkJ_t-c1F2v27Q) 

[A Gentle Introduction to SuperCollider](https://works.bepress.com/bruno-ruviaro/3/) book by Bruno Ruviaro

[Scoring Sound](https://leanpub.com/ScoringSound) book by Thor Magnusson

[tutorial](https://composerprogrammer.com/teaching/supercollider/sctutorial/tutorial.html) by Nick Collins

more
- https://fredrikolofsson.com/categories/supercollider/
- https://supercollider.github.io/community/sc140
- http://sc3howto.blogspot.com/2006/04/fast-pbind-based-introduction-for.html
- https://schemawound.com/2012/12/03/helping-until-it-hurts/


---
name: assignment
# Assignment

5-min sound portrait: live coding

AND

find some SC code and modify + document it

what next? 
  - [Sonic Pi](https://sonic-pi.net/) 
  - [TidalCycles](https://tidalcycles.org/)