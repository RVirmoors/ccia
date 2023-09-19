---
layout: presentation
title: Loops
---

class: center, middle
.title[Game Development 1]
<br/><br/>
.subtitle[Loops]
<br/><br/><br/><br/><br/><br/>
.date[Dec 2022] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC

---
class: center
## the future of learning?

[<img width="80%" src="../attachments/chatgpt-p8-start.png">](https://chat.openai.com/chat)
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->

1. [Keyboard interactivity](#keyboard-interactivity)
2. [Drawing](#drawing)
3. [Loops](#loops)
4. [Assignment](#assignment)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]

---
name: keyboard-interactivity
# Keyboard interactivity

[system functions](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Input) - `btn()`, `btnp()`

```lua
-- standard buttons: ⬆️⬇️⬅️➡️🅾️❎
function _update()
    if (btn(🅾️)) do
        sfx(0) -- if O is held down
    end

    if (btnp(❎)) do
        sfx(1) -- if X was just pressed
    end
end
```

--

custom [mouse and keyboard input](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Mouse_and_Keyboard_Input)
- [lua strings](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Strings_and_Type_Conversion)

---
name: drawing
# Drawing

.right-column[
- <img src="../attachments/p8-coords.png" width="75%">
- <img src="../attachments/p8-color.png" width="75%">
]

.left-column[
coordinate system

colors

```lua
circfill(x, y, radius, color)
```

[intro to lua](https://demoman.net/?a=intro-to-lua) @ demoman.net

basic trig: `sin`, `cos`, [`atan2`](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#ATAN2)

randomness: [`rnd`](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RND)
]

---

<iframe width="100%" height="600" src="https://www.youtube.com/embed/t4CRCJUmWsM?start=42" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---
name: loops
# Loops

`_update()` → one loop / frame

--

what if we want *n* loops / frame?

---
## Architecture of a loop

`while`

--

`for`

--

exercise
- draw 15 stars (white dots) on a black background
- [flowchart](01-02-gd-basics#10) before coding

<img src="../attachments/p8-stars.png" width="50%">

---
## Loops in code

recap [conditionals](01-03-pico8#25)

--

```lua
while ( cond ) do
    actions ...
end
```

--

```lua
for i = from,to,increment do 
    actions ...
end
```

--

- the above syntax, annotated --

```lua
while ( cond ) do   -- while cond is true
    actions ...    -- do actions
end

for i = from,to,increment do 
    -- standard form:
    -- for i=1,N
    actions; ...   -- actions to be performed N times
end
```

---
name: assignment
# Assignment

Plan a new game to build in PICO-8.

- can be a mod of an existing PICO-8 cart
- can be a new implementation of an existing design

deliverables:
- in-depth description of your primary gameplay loop 
  - (use flowcharts or FSMs if needed)
- your `.p8` file showing some initial progress

<iframe width="50%" height="230" src="https://www.youtube.com/embed/Hq7IiMPH_DE" title="5 Bad Genres For Your First Game - Game Design Corner" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><iframe width="50%" height="230" src="https://www.youtube.com/embed/4TxIS3Zi_RQ" title="5 Overlooked Genres for Your First Game" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>