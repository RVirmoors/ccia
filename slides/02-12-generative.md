---
layout: presentation
title: Generative processes
---

class: center, middle
.title[Creative Coding and Software Design 2]
<br/><br/>
.subtitle[Week 12: Generative processes]
<br/><br/><br/><br/><br/><br/>
.date[May 2021]
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★     <!-- omit in toc -->
1. [Timing](#timing)
2. [Randomness](#randomness)
3. [Rules](#rules)
4. [Cues](#cues)
5. [Mapping](#mapping)
6. [Recording / sequencing](#recording--sequencing)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]
        
---
name: timing
# Timing

[Timing and Sequencing Events](https://docs.cycling74.com/max8/vignettes/timing_events_topic) | Max documentation

metro

pipe, delay

transport

timer 

phasor~, rate~, edge~

[Event Priority in Max](https://cycling74.com/articles/event-priority-in-max-scheduler-vs-queue) 
   - [Scheduler settings](https://docs.cycling74.com/max8/vignettes/scheduler_settings)
   - [Threading in Max](https://youtu.be/7n-sl687tkI) video

---
name: randomness
# Randomness

random, drunk, decide

urn

---
name: rules
# Rules

finite state machines (FSM)

cellular automata (CA)

grammars, L-systems

artificial life (ALife)

[Kadenze course](https://www.kadenze.com/courses/generative-art-and-computational-creativity-i/sessions/rule-based-systems-grammars-and-markov-chains) | SFU 

deterministic / [nondeterministic](https://en.wikipedia.org/wiki/Nondeterministic_algorithm)

chaos: 
- [Strange Attractors](http://sites.music.columbia.edu/cmc/courses/g6611/spring2005/week1/sabook.pdf) book
- [Fractals, Chaos, Self-Similarity](http://paulbourke.net/fractals/)

---

## Recap: finite state machines

.left-column[
a variable with:
- **states**
- transition **rules**

computed every **step**
- (self-transition is possible)
]
.right-column[
<iframe src="https://www.youtube.com/embed/x1mlHEUwl_8?t=122s" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
]
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
https://en.wikipedia.org/wiki/Finite-state_machine

---

## Cellular automata

universe
- n-dimensional grid of **cells** that can be in a finite number of **states**

transition rule
- for a cell, current state & neighbourhood → state @ next **step**

example: Conway's *Game of Life*
- jit.conway
- [ConwayLife](https://conwaylife.com/)
- [js implementation](http://pmav.eu/stuff/javascript-game-of-life-v3.1.1/)
- [Life Game Orchestra](https://www.nime.org/proceedings/2009/nime2009_050.pdf) paper
- [generative ambient patch](https://www.youtube.com/watch?v=mQjUlaYjZt8)

---

## Grammars 

*rewriting*

generative grammar: 
- **rules**: symbol(s) → symbols
  - symbols on the left *are made up of* symbols on the right
  - may include variations
- **initial** symbol S (*sentence*)
- set of **terminal** symbols (*words*)

L-system
- **parallel** rewriting
- jit.linden
- jit.turtle

---

## Artificial life 

[Introduction to Artificial Life for People who Like AI](https://thegradient.pub/an-introduction-to-artificial-life-for-people-who-like-ai/)

[Artificial Life](https://direct.mit.edu/artl) journal | MIT

cells = agents

multiagent systems

genetic algorithms

---
name: cues
# Cues

playlist~

qlist

[Preload and play sound cues](https://music.arts.uci.edu/dobrian/maxcookbook/preload-and-play-sound-cues) | Max Cookbook

useful package: Antescofo

useful tool: [Jamoma](http://jamoma.org/)

---
name: mapping
# Mapping

scale

table, function

coll, dict

---
name: recording--sequencing
# Recording / sequencing

mtr

seq

useful packages: bach, cage, MuBu, ...

useful tools: [IanniX](https://www.iannix.org/en/), [TWO](https://thewizardofosc.com/)