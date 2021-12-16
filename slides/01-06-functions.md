---
layout: presentation
title: Functions
---

class: center, middle
.title[Creative Coding and Software Design 1]
<br/><br/>
.subtitle[Week 6: Functions]
<br/><br/><br/><br/><br/><br/>
.date[Nov 2021] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★      <!-- omit in toc -->

1. [Structuring your programs](#structuring-your-programs)
2. [Functions](#functions)
3. [Common uses](#common-uses)
4. [Examples](#examples)
5. [Exercises](#exercises)
6. [Vertex drawing](#vertex-drawing)
7. [Math basics](#math-basics)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]

---
name: structuring-your-programs
# Structuring your programs

an elegant program
- is shorter than most alternatives - *conciseness*
- consists of discrete/replaceable parts - *modularity*
- is often the most efficient solution - *efficiency*
  - *E W Dijkstra, 2000. Denken als Discipline*

<iframe width="100%" height="250px" src="https://www.youtube.com/embed/RCCigccBzIU?start=1050" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


--

What role does programming elegance play in Creative Coding?

---
name: functions
# Functions

modularity

reusability

--

```java
returnType functionName(parameters) {
// Code body of function
return result;      // nothing to return if returnType is void
}
```
parameters ~ *arguments*

--

recursion

---
name: common-uses
# Common uses

components 
```java
void drawLeg(int which)
```

operations
```java
float linearEq(float a, float x, float b)
float gcd(float a, float b)
```

logging
```java
void debug()
```

---
name: examples
# Examples

[GPIO library](https://processing.org/reference/libraries/io/GPIO.html) for RasPi et al

setters
```java
void pinMode(int pin, int mode)
void digitalWrite(int pin, boolean value)
```

getters
```java
int digitalRead(int pin)
```

---
## Example

[Arduino code](https://github.com/adafruit/DHT-sensor-library) for DHT22 temp&humidity sensor

```c
void begin(uint8_t usec=55);
float readTemperature(bool S=false, bool force=false);
float readHumidity(bool force=false);
```

--

*default values* for parameters
- supported by Arduino, Python, C++ et al

--

Java solution: [function *overloading*](https://stackoverflow.com/questions/997482/does-java-support-default-parameter-values)

```java
void begin(int usec) { ... };

void begin() { begin(55); }
```

---
name: exercises
# Exercises

modules ↔ functions

<iframe width="600" height="444px" src="https://editor.p5js.org/RVirmoors/full/vCF1Kkl-c"></iframe>

---
## Exercise: space game

![](../attachments/ship-game.png)

what is the program structure?

---
## Exercise: space game

.left-column[
starry background

draw ship shape

rotate via mouse

accelerate using space bar
]

.right-column[
<img width="100%" src="../attachments/ship-game.png">
]

---
name: vertex-drawing
# Vertex drawing

```java
// drawing parameters
fill(), stroke(), strokeWeight(), smooth()

// vertex drawing
beginShape(), endShape()
vertex()
curveVertex(), bezierVertex()

// transform
translate(), rotate(), scale()
pushMatrix(), popMatrix()
```

.left-column[
```java
beginShape();
vertex(-20, 0);
bezierVertex(13, -15, 0, -30, 0, -30);
bezierVertex(0, -30, -13, -15, 20, 0);
vertex(-20, 0);
endShape();
```
]

.right-column[
<img width="50%" src="../attachments/ship-game.png">
]

---
name: math-basics
# Math basics

[vectors](https://natureofcode.com/book/chapter-1-vectors/) and [forces](https://natureofcode.com/book/chapter-2-forces/)

```java
random()
% ~ mod                   // repetition, divisibility
sin(), atan2()            // trigonometry, DSP
dist()                    // distance
constrain(), map()
```

.left-column[
<img width="100%" src="../attachments/ship-phys.png">
]

--

.right-column[
<img width="100%" src="../attachments/ship-transf.png">
]