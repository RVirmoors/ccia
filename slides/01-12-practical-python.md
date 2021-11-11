---
layout: presentation
title: Practical Python
---

class: center, middle
.title[Creative Coding and Software Design 1] 
<br/><br/>
.subtitle[Week 12: Practical Python]
<br/><br/><br/><br/><br/><br/>
.date[Jan 2021] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★    <!-- omit in toc -->
      
1. [Installing Python](#installing-python)
2. [Three ways to access Python](#three-ways-to-access-python)
3. [Python language specifics](#python-language-specifics)
4. [Working with libraries (modules)](#working-with-libraries-modules)
5. [Links](#links)

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

So far I've been able to manage without these on my Windows PC (I do use Homebrew on the Mac), but you might find them useful.

--

[https://www.python.org/downloads/](https://www.python.org/downloads/)

???

You can follow the link to download a current version for your system.

---

name: three-ways-to-access-python  
class: left
# Three ways to access Python

1. From the **command line**
2. In an **editor** / IDE
3. In Jupyter **notebooks**

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

### Rules of thumb

<iframe src="https://www.youtube.com/embed/7jiPeIFXb6U" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

-   use IDEs to **develop** and **test** your code (several files, modules, dependencies...)
-   use NOTEBOOKS to get results (Colab GPU) and to **communicate** them.

...however:

<iframe src="https://www.youtube.com/embed/9Q6sLbz37gk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

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

name: working-with-libraries-modules
class: left
# Working with libraries (modules)

example code:
```python
import torch		# import the whole library 
import numpy as np	# import the whole library, with an alias
from torch.utils.data import DataLoader 	# import a specific class or function 

# [...] 

x = torch.Tensor([0.]).numpy()
x = np.add(x, [1.])
d = DataLoader(dataset)
```

---

## Installing modules

manual, **pip**, [conda](https://docs.conda.io/en/latest/)

```powershell
pip install numpy 
python 
>>> import numpy as np
```

in notebooks, use the `!` prefix:
```powershell
!pip install pretty_midi
```

see all your installed libraries:
```powershell
pip list
```

---

## Managing installs: virtual environments
[venv](https://medium.com/swlh/painless-easy-virtual-environment-setup-for-your-python-project-5aed144acebf)

```powershell
python -m venv venv
cd venv/Scripts
activate
cd ../..
```

store and share your list of dependencies:
```powershell
pip freeze > requirements.txt 
[[OR]] 
pip install pipreqs 
pipreqs
```

(re)install your dependencies
```powershell
pip install -r requirements.txt
```

if you're using git, don't forget to add "venv/" to your .gitignore

modern & compliant alternative: [pyenv + pipenv](https://gioele.io/pyenv-pipenv)

---

## Libraries in TouchDesigner

TD: native Python interpreter

see the [docs](https://docs.derivative.ca/Introduction_to_Python_Tutorial#Importing_Modules)

Edit > Preferences > Python 64 bit Module Path → your "site-packages" folder

OR, in the textport (alt+P):
```python
import sys mypath = "[YOUR PATH HERE]/venv/Lib/site-packages" 
if mypath not in sys.path:
	sys.path.append(mypath)
```

(much) more on Python in TD, [HERE](https://matthewragan.com/teaching-resources/touchdesigner/python-in-touchdesigner/).

---

name: links
class: left
# Links

https://jakevdp.github.io/WhirlwindTourOfPython/

https://ryxcommar.com/2019/10/24/how-i-learned-python/

https://ml4a.github.io/classes/itp-F18/terminal-velocity/
