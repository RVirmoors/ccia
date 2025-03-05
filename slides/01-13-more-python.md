---
layout: presentation
title: More Python
---

class: center, middle
.title[Creative Coding and Software Design 2]
<br/><br/>
.subtitle[More Python]
<br/><br/><br/><br/><br/><br/>
.date[Mar 2025] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★     <!-- omit in toc -->
      
1. [Working with libraries (modules)](#working-with-libraries-modules)
2. [Advanced language features](#advanced-language-features)
3. [Creating scripts](#creating-scripts)
4. [Assignment](#assignment)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★]( #toc)]
        
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
- package manager in TD is still [work in progress](https://forum.derivative.ca/t/rfe-integrate-poetry-package-manager-with-td/168073) / see also [TD PIP](https://derivative.ca/community-post/asset/td-pip/63077)
- (much) more on Python in TD, [HERE](https://matthewragan.com/teaching-resources/touchdesigner/python-in-touchdesigner/).

---
name: advanced-language-features  
class: left
#  Advanced language features

[Primer notebook](https://colab.research.google.com/drive/11oG5cS7_AmZjSewVp8XiQCujb7LSPaBe?usp=sharing)

list comprehensions

classes & OOP

---

name: creating-scripts       
class: left
#  Creating scripts
prep: virtual environment

pip install libraries: [pretty_midi](https://github.com/craffel/pretty-midi), [python-osc](https://github.com/attwad/python-osc), ...

other modules: `argparse` or `absl-py`, `time`

---

name: assignment
# Assignment

in TouchDesigner, create
- a CHOP with one channel
  - can be a constant, an LFO, whatever
- a table DAT with 2 cells
- a CHOP Execute python script for
  - negative CHOP values are sent to one cell
  - positive CHOP values are sent to the other