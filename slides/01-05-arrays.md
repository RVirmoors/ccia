---
layout: presentation
title: Arrays
---

class: center, middle
.title[Creative Coding and Software Design 1]
<br/><br/>
.subtitle[Arrays]
<br/><br/><br/><br/><br/><br/>
.date[Apr 2023] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->

1. [Arrays](#arrays)
2. [Useful built-in vars \& functions](#useful-built-in-vars--functions)
3. [Common uses](#common-uses)
4. [Images](#images)
5. [Animation](#animation)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]

---
class: center
## Data and perception: Parag K. Mital

<iframe width="100%" height="500" src="https://www.youtube.com/embed/b_y1FKQs6UA?start=25" title="Parag K. Mital - Talk @ Jeffrey Deitch Gallery - April 3, 2023" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

---
name: arrays
# Arrays

```java
int[] data; // Declare
data = new int[5]; // Create
data[0] = 19; // Assign
… 
data[4] = 90;


int[] data = new int[5]; // Declare, create
data[0] = 19; // Assign
…
data[4] = 90;


int[] data = { 19, 40, 75, 76, 90 }; // Declare, create, assign

```

[reference](https://processing.org/reference/Array.html)

---
## Array types

basic types

```java
int[] a;    // 5, 2, 6, 20, -2, -100
float[] b;  // 3.2, 77.442, 3.14
```

built-in classes

```java
String[] c; // "apple", "pear", "fish"
```

custom classes

```java
Apple[] d; // (255, 0, 0), (0, 255, 0)
```

---
name: useful-built-in-vars--functions
# Useful built-in vars & functions

[`.length`](https://processing.org/reference/Array.html)

[`max(a)`](https://processing.org/reference/max_.html)

[`printArray(a)`](https://processing.org/reference/printArray_.html)

[`resultArray = append(toArray, whatItem)`](https://processing.org/reference/append_.html)

[`arrayCopy(from, to)`](https://processing.org/reference/arrayCopy_.html)

---
## Arrays in p5.js

```js
var x = new Array(20);      // .length init'd at 20
for(var i = 0; i < x.length; i++)
    x[i] = i * 2;           // initialize the array
```

--

[js arrays](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array) are more flexible 

```JS
let y = [];     // .length init'd at 0
y[0] = "cat";   // .length is now 1
y[2] = "dog";   // .length is now 3
```

--

```JS
let z = y.slice();     // this is how to make a copy
```

---
name: common-uses
# Common uses

[data](https://processing.org/tutorials/arrays/) storage, processing, viz
- e.g. `{ 5, 12, 3, 7, 20 }`

<img width="80%" src="../attachments/array-viz.png">

--

history [shift right](https://github.com/RVirmoors/cc1/blob/master/cc1-2017/cc1_05_01_history_reasfry/cc1_05_01_history_reasfry.pde) / [circular buffer](https://github.com/RVirmoors/cc1/blob/master/cc1-2017/cc1_05_02_history_circular/cc1_05_02_history_circular.pde)

<img src="https://processing.org/static/2d9785184389bd919accc42a386e0807/772e8/28_16_3.png">

- see [tutorial](https://processing.org/tutorials/arrays)

---
## More arrays

1D array ~ *vector*

--

2D array ~ *matrix*

```java
int[][] matrix = { {0, 3}, {5, 2}, {7, -1} };
```

--

more: [Table](https://processing.org/tutorials/data/), [IntDict](https://processing.org/reference/IntDict.html), ...

---
name: images
# Images

`save()`

`saveFrame()`

`PImage, get()`

`loadPixels(), pixels[], updatePixels()`

`PGraphics, createGraphics(), beginDraw(), endDraw()`

`background()`: color, image, or pgraphic

---
class: center
name: animation
# Animation

animated sprites

<img src="https://static.wikia.nocookie.net/villains/images/7/78/Doom_Imp.gif">

[example](https://processing.org/examples/sequential.html)

[library](https://github.com/extrapixel/gif-animation)