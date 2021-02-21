---
layout: presentation
title: Intro to Max & Pd and Unity
---

class: center, middle
.title[Creative Coding and Software Design 2]
<br/><br/>
.subtitle[Week 1: Intro to Max & Pd and Unity]
<br/><br/><br/><br/><br/><br/>
.date[Feb 2021] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->
      
1. [Semester overview](#semester-overview)
2. [Interactive programming](#interactive-programming)
3. [Max & Pd](#max--pd)
4. [Unity](#unity)
5. [Assignment](#assignment)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]
        
---
name: semester-overview  
class: left
# Semester overview

[Syllabus](https://www.notion.so/rvirmoors/Creative-Coding-and-Software-Design-2-b6cab9fba18a4e5c85f97fc3f0364aa7)


| 2h lab | ~ | review assignments. practice w/ new concepts |
| --- | | --- |
| 2h lecture | ~ | review readings. new concepts. next assignments / readings |

Unity 
- (w/ AGD, weeks 2-4 & 8-10)

Max . Pd? TD?

Arduino, RPi, sensors

---

## Final project (20%)

A *or* Ba *or* Bb

A. practical project
- interactive app / installation / tool, using sensor / sound / video user input
- project documentation (1-3 pages w/ bibliography)
- topic: week 9

B. research project
- *review* paper
  - 3-6 pages w/ bibliography (10+ items)
- annotated bibliography
  - 60+ publications (papers, chapters, books …), out of which:
  - 6 items: 1-2 summary paragraphs (context+what is interesting to you), NOT taken from the abstract
- see [resources](../resources#academic)

---
name: interactive-programming  
class: left
# Interactive programming

[@wikipedia](https://en.wikipedia.org/wiki/Interactive_programming)

data **flow**

program **state**

| | visual | free | Linux |
|-|--------|------|-------|
|Max|✅|❌|❌|
|Pure Data|✅|✅|✅|
|TouchDesigner|✅|❌|❌|
|vvvv|✅|✅|❌|
|Supercollider|❌|✅|✅|
|Unity*|❌|❌|✅|

--

*not actually interactive

---
name: max--pd  
class: left
# Max & Pd

[Max](//cycling74.com/products/max/): created by [Miller Puckette](//msp.ucsd.edu/) in the 80s at IRCAM

90s: M.S.P. → [Pure Data](//puredata.info/)

1997: MSP / Max Signal Processing

2003: Jitter

2011: [Max](https://cycling74.com/products/maxforlive) [for](https://maxforlive.com/) [Live](https://www.ableton.com/en/live/max-for-live/)

[also](https://cycling74.com/products/extendmax): C/C++, Gen, JavaScript + Node for Max, many *external* [packages](https://cycling74.com/packages/)

meanwhile: 
- Pd-Extended → [Purr Data](https://agraef.github.io/purr-data-intro/)

- [libpd](https://github.com/libpd/libpd) : [Raspberry Pi](https://puredata.info/docs/raspberry-pi), [Unity](https://github.com/LibPdIntegration/LibPdIntegration) etc

---

## Max

commercial software / Cycling ‘74

runs on Win & OSX

documentation : *Help > Reference*

[hundreds of objects](https://docs.cycling74.com/max8/vignettes/thesaurus)

learning by practice → 💡 → intuition

dataflow programming / real-time prototyping / interaction design

**js**, **node**, java, c/c++...

---

## Pure Data

open source / copyrighted but free

runs on Win, OSX, Linux

[documentation](http://msp.ucsd.edu/Pd_documentation/index.htm) : *Help > HTML manual*

[hundreds of objects](https://puredata.info/docs/faq/listofobjects)

learning by practice → 💡 → intuition

dataflow programming / real-time prototyping / interaction design

**libpd**, [js](https://github.com/mganss/pdjs), c/c++...

---

class: center
## UI comparison

<img style="width:100%"  src="../attachments/max-pd-purr.png">

---

name: unity       
class: left
#  Unity

commercial software / Unity Technologies

runs on Win & OSX, compiles to Linux & many more

[documentation](https://docs.unity3d.com/Manual/index.html) : *Help > Reference*

[C# API](https://docs.unity3d.com/Manual/ScriptingImportantClasses.html)

learning by googling & rtfm

imperative programming / iterative prototyping / experience design

[plug-ins](https://docs.unity3d.com/Manual/Plugins.html)

--

FOSS alternative: [Godot](https://godotengine.org/features)

---

name: assignment       
class: left
#  Assignment

[Ruby's Adventure](https://learn.unity.com/project/ruby-s-2d-rpg)

and/or

[Create with Code](https://learn.unity.com/course/create-with-code)


See more [resources](../resources).



