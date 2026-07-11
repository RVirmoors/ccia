---
layout: presentation
title: Intro to Creative Coding for Interactive Arts
---

class: center, middle
.title[Creative Coding and Software Design 1]
<br/><br/>
.subtitle[Intro to Creative Coding for Interactive Arts]
<br/><br/><br/><br/><br/><br/>
.date[Jul 2026] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->
      
1. [Semester overview](#semester-overview)
2. [What we cover](#what-we-cover)
3. [Tools](#tools)
4. [Processing](#processing)
5. [An "AI Simulator"](#an-ai-simulator)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]
        
---
name: semester-overview  
class: left
# Semester overview

- 1h lab: new concepts in practice
- 1h lecture: theory, discussion

[Syllabus](https://www.notion.so/itpma/Creative-Coding-and-Software-Design-1-2924578f95ba4de1a95ce28ab0e1ae50)

[Classroom](https://classroom.google.com/)

[my site](https://rvirmoors.github.io/ccia/): Creative Coding for Interactive Arts

---
## General advice

bring laptops to labs, take notes, build stuff

ask questions! [pluralistic ignorance](https://youarenotsosmart.com/2019/07/02/yanss-157-the-psychology-behind-why-people-dont-speak-out-against-and-even-defend-norms-they-secretly-despise/)

[curse of knowledge](https://towardsdatascience.com/the-curse-of-knowledge-8deb4769bff9)

google, stackoverflow etc

--

AI?

--

BUILD STUFF!

---

## Programming as embodied craft

"not something you *think*, something you *do*"

--

neuroplasticity

--

mistakes ➡ learning

--

so challenge yourself & BUILD STUFF.

--

vs using AI. 
- example: [Allison Parrish](https://www.decontextualize.com/) / [insta](https://www.instagram.com/p/Dal8D1bjswF/) [.](../attachments/ap-ai.png)

---
## Programming as exploration

<iframe width="49%" height=500px src="https://www.youtube.com/embed/7YpFGkG-u1w?start=834" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<iframe width="50%" height=500px src="https://www.youtube.com/embed/8u2tooYxicE?start=78" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
## Skills in programming

--

logic

--

generalisation

--

architecture

--

computer science

--

"I'm bad at programming!" 😭

- → *what skill* should I improve?
- → does it matter?

---
## Dev components

| **intention**  |+| **invention**  |+| **adaptation** |
|---|-|----|-|-- |
| ideas | | logic | | programming |
| goals | | algorithms | | compiler etc |

---
## Dev components

intention
- ideas, goals
- → `//comments`

--

invention
- logic, algorithms
- → [flowcharting](https://www.visual-paradigm.com/tutorials/flowchart-tutorial/), pseudocode

--

adaptation
- programming language, compiler, SW+HW architecture
- → code

---
name: what-we-cover
# What we cover

creative coding: not just "visual apps"

focus on **interaction**

--

[creative applications](http://www.creativeapplications.net/)

--

[awesome resources](https://github.com/terkelg/awesome-creative-coding)


---
## Glossary of terms

scripting ~ coding ~ programming ~ developing

--

architecture … algorithm

--

design patterns

coding style 

---
name: tools       
class: left
# Tools

- Processing / Java
- p5.js / JS
- *oF / C++*


- Python
- Arduino


- *Godot / GDScript*
- *Unity / C#*
- *PICO-8 / lua*


- Max
- Pd
- TouchDesigner


- [GitHub](https://desktop.github.com/)

See more [resources](../resources).

---
class: center
## How many languages will you learn?

<img style="width:80%"  src="../attachments/number-of-languages.png">

---
## What's the "best" programming language?

A. depends on your target domain
- → Processing/Java, p5.js, Max, Pd, oF/C++, TD, Unity/C#, Godot, Unreal/C++, pico-8,  ...

--

B. PYTHON!
- accessible, modular, multi-platform = “swiss army knife” language

--

C. it doesn't matter!
- you can pick up and learn any language/tool: fundamentals are similar

---
name: processing
# Processing

.right-column[
[books](https://processing.org/books/)

<img style="height:200px"  src="../attachments/p5-book.png">
<img style="height:200px"  src="../attachments/oF-book.png">

]

.left-column[
install @ [processing.org](https://processing.org/)

[p5js editor](https://editor.p5js.org/) / [openprocessing](https://openprocessing.org/)

[p5js and Processing](https://github.com/processing/p5.js/wiki/Processing-transition)

also install [GitHub Desktop](https://desktop.github.com/)
]

---
## p5 program flow

| `setup()`         | / | execute once at init |
|-------------------|---|----------------------|
|`draw()`           | / | execute every frame  |
| `mouseClicked()` etc  | / | triggered *events* |

[basic example](https://processing.org/examples/setupdraw.html), [p5js](https://p5js.org/examples/structure-setup-and-draw.html)

--

.left-column[

## drawing basics

```java
size(200,200);  // settings
rectMode(CENTER);
rect(100,100,20,100); //drawing
ellipse(100,70,60,60);
ellipse(81,70,16,32); 
ellipse(119,70,16,32); 
line(90,150,80,160);
line(110,150,120,160);
```
]

.right-column[

<img style="width:66%"  src="../attachments/p5-coords.png">

- [examples](https://processing.org/examples), [p5js](https://p5js.org/examples/)
- [reference](https://processing.org/reference/), [p5js](https://p5js.org/reference/)
- [basic tutorial](https://processing.org/tutorials/coordinatesystemandshapes), [p5js](https://p5js.org/learn/coordinate-system-and-shapes.html)
]


---
name: an-ai-simulator
class: center
# An "AI Simulator"

[Universal Paperclips](http://www.decisionproblem.com/paperclips/)

[(original version)](https://web.archive.org/web/20171009230721/http://www.decisionproblem.com/paperclips/index2.html)
- [article about the game](https://if50.substack.com/p/2017-universal-paperclips) / Aaron A. Reed

---
class: center
## An "AI Simulator"

<img style="width:80%"  src="../attachments/paperclips.png">