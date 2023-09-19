---
layout: presentation
title: Practical Python
---

class: center, middle
.title[Creative Coding and Software Design 2] 
<br/><br/>
.subtitle[Week 2: Practical Python]
<br/><br/><br/><br/><br/><br/>
.date[Mar 2022] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★    <!-- omit in toc -->
      
1. [Installing Python](#installing-python)
2. [Four ways to access Python](#four-ways-to-access-python)
3. [Python language specifics](#python-language-specifics)
4. [Links](#links)

???

This session is intended as a practical overview of the Python infrastructure you need to know and understand in order to make sense of existing open source codebases and to start to write your own scripts.

The structure is a mix of practical, *shallow* notions 
about the Python infrastructure and ecosystem, and
a hands-on introduction to the language.

In next week's session we will be delving into some more
advanced features and some *deeper* ideas about
"Pythonic" programming.

But for now, the main takeaway I hope you'll get is that
Python is a flexible, easy-to-use language, with multiple
points of entry and applications, and which doesn't look that
much different from the p5 / p5js you've used already.
          
---
layout: true  .toc[[★](#toc)]
        
---
name: installing-python  
class: left
# Installing Python
check your version:

```powershell
python --version
python
```

Python **3**.7+

64 bit

add to PATH

???

First, let's check if we already have Python installed on our system. Most modern code should work with version 3.7 or later.

You can find out if your Python is 32 or 64 bit by running "python". Certain libraries, e.g. all modern deep learning frameworks, require 64 bit.

If you're on a Mac, it's likely you already have Python v2 installed, which won't do. There are tools that help you manage your Python installs, like Homebrew and Pyenv. And there's Anaconda, which can also manage your [libraries](#modules) -- think of it as an equivalent of Unity Hub maybe.

--

[https://www.python.org/downloads/](https://www.python.org/downloads/)

???

You can follow the link to download a current version for your system.

---

name: four-ways-to-access-python  
class: left
# Four ways to access Python

1. from the **command line**
2. in an **editor** / IDE
3. in Jupyter **notebooks**
4. inside **TouchDesigner**

---

## Command line

```powershell
python

```

???

You can use any interface such as Command Prompt or PowerShell (Windows), or the standard Terminal under Mac/Linux.

This way of working comes in handy when you need to quickly test some functionality.

---

## Editor

[Sublime Text](https://www.sublimetext.com/)

[VS Code](https://code.visualstudio.com/) by ms

[Atom](https://atom.io/) by github

write your file(s) in an IDE, then run

```powershell
python myfile.py
```

???

Python ships with its own IDE called "IDLE", which you should probably avoid.

---

## Notebooks

[install Jupyter locally](https://jupyter.org/install)

create/find notebooks [on Google Colab](https://colab.research.google.com/)

share your .ipynb notebooks [on](https://github.com/fastai/fastbook) [github](https://github.com/RVirmoors/rolypoly/blob/master/py/rolypoly.ipynb)

???

This paradigm comes closest to the idea of *live coding*. You can execute code line-by-line or block-by-block, and meanwhile Jupyter/Colab retains your program's *state* and you can navigate your code in a non-linear, exploratory fashion.

---

## TouchDesigner

[Official TD: Python](https://docs.derivative.ca/Category:Python)
- [custom python install](https://docs.derivative.ca/Category:Python#Installing_Custom_Python_Packages): Edit > Preferences > "Add External Python to Search Path". 
- [tutorial](https://docs.derivative.ca/index.php?title=Introduction_to_Python_Tutorial) & [tips](https://docs.derivative.ca/Python_Tips)
- [TD Completes Me](https://derivative.ca/community-post/asset/td-completes-me-simple-auto-completion-engine-touch-designer) vscode extension

--

.left-column[
[Learning TouchDesigner](https://derivative.ca/UserGuide/Learning_TouchDesigner)

[Matthew Ragan](https://matthewragan.com/teaching-resources/touchdesigner/) resources
- [keyboard shortcuts](https://matthewragan.com/teaching-resources/touchdesigner/touchdesigner-keyboard-shortcuts/)
- [python in TD](https://matthewragan.com/teaching-resources/touchdesigner/python-in-touchdesigner/) / [github](https://github.com/raganmd/TD-Examples/tree/master/ragan/python_in_touchdesigner)
- [common operations](https://matthewragan.com/teaching-resources/touchdesigner/touchdesigner-common-operations-cheat-sheet/) cheat sheet
- [python external libraries](https://github.com/mir-lab/touchdesigner-summit-2019-external-python) 2019 workshop
]

.right-column[
<iframe src="https://www.youtube.com/embed/XqCnm0LN0mM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/YOA4tIOEU7k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
]


---

### Rules of thumb

<iframe width="100%" src="https://www.youtube.com/embed/7jiPeIFXb6U" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

-   use IDEs to **develop** and **test** your code (several files, modules, dependencies...)
-   use NOTEBOOKS to get results (Colab GPU) and to **communicate** them.

...however:

<iframe width="100%" src="https://www.youtube.com/embed/9Q6sLbz37gk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

name: python-language-specifics
class: left
# Python language specifics

[Primer notebook](https://colab.research.google.com/drive/11oG5cS7_AmZjSewVp8XiQCujb7LSPaBe?usp=sharing)

indentation

lists

iteration

functions

modules

...

---

name: links
class: left
# Links

https://jakevdp.github.io/WhirlwindTourOfPython/

https://ryxcommar.com/2019/10/24/how-i-learned-python/

https://ml4a.github.io/classes/itp-F18/terminal-velocity/

[[TouchDesigner and Python](../touchdesigner-and-python)]
