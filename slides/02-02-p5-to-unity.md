---
layout: presentation
title: From Processing to Unity
---

class: center, middle
.title[Creative Coding and Software Design / Game Development 2]
<br/><br/>
.subtitle[Week 2: From Processing to Unity]
<br/><br/><br/><br/><br/><br/>
.date[Mar 2021] 
<br/><br/><br/>
.note[Created with [Liminal](https://github.com/jonathanlilly/liminal) using [Remark.js](http://remarkjs.com/) + [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) +  [KaTeX](https://katex.org)]

???

Author: Grigore Burloiu, UNATC
    
---
name: toc
class: left
# ★ Table of Contents ★     <!-- omit in toc -->

1. [Setting up](#setting-up)
2. [C# and Java](#c-and-java)
3. [Mini-game from scratch](#mini-game-from-scratch)
4. [Sharing your project](#sharing-your-project)
5. [Assignment](#assignment)

        
<!-- Comment out the next slide if you don't want the Table of Contents link -->         
---
layout: true  .toc[[★](#toc)]
        
---

name: setting-up
# Setting up

[Get Unity](https://unity3d.com/get-unity/download)

[Visual Studio](https://docs.unity3d.com/Manual/ScriptingSettingUp.html)

- [Community](https://visualstudio.microsoft.com/vs/unity-tools/)
  - [officially recommended IDE](https://youtu.be/KH0nqTpOVuM)
  - [installation](https://youtu.be/nna58aKumJ8)
- [Code](https://code.visualstudio.com/docs/other/unity)
  - lightweight
  - [open source](https://github.com/microsoft/vscode)-based

other editors work too, e.g. [Sublime Text](http://wiki.unity3d.com/index.php/Using_Sublime_Text_as_a_script_editor)


---
name: c-and-java  
class: center
# C# and Java

<img style="width:100%"  src="../attachments/csharp-java.png">

---

## Unity and Processing

p5: write p5-flavour Java
- subset of a Java *applet* class 
- run by JVM

Unity: write C#
- API → C++
- compile to native machine code

---

name: mini-game-from-scratch
# Mini-game from scratch

<iframe src="https://openprocessing.org/sketch/998046/embed/" width="100%" height="400"></iframe>

---

class: center
## Play mode

<img style="width:100%"  src="../attachments/unity-editor-play.png">

---

## Unity-fying our code

https://docs.unity3d.com/ScriptReference/Vector2.MoveTowards.html

https://docs.unity3d.com/Manual/CollidersOverview.html


---

class: center
name: webgl-build
## WebGL build

<iframe src="https://rvirmoors.github.io/webgl/p5-unity/" width="600" height="406"></iframe>

- [hosting on github.io](https://medium.com/@aboutin/host-unity-games-on-github-pages-for-free-2ed6b4d9c324) 
  - embed: <100 mb per file // dl: <1GB per file, with [LFS](https://git-lfs.github.com/)
- [hosting on itch.io](https://itch.io/docs/creators/html5) 
  - embed: <200MB per file, <500MB total // dl: <1GB per file*

---
name: sharing-your-project
# Sharing your project

right-click on Scene > *Export Package...*

- → myProject.unitypackage

upload to classroom, google drive, etc

---

## Version control

.left-column[
  [GitHub Desktop](https://desktop.github.com/)

- [GitHub for Unity](https://unity.github.com/)

- [How to Git with Unity](https://thoughtbot.com/blog/how-to-git-with-unity)

- [my first Unity repo](https://github.com/RVirmoors/Unity)

THE BIG FIVE
- clone, pull, add, commit, push

more git+Github [resources](../resources#git-and-github)
]


.right-column[<img style="width:100%"  src="../attachments/git-in-case-of-fire.png">]

---

name: assignment       
class: left
#  Assignment

Refactor the project using:
- GameObject-connected scripts
- Colliders 
- as many Unity-specific helpers as you find useful