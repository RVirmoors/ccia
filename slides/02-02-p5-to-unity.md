---
layout: presentation
title: From Processing to Unity
---

class: center, middle
.title[Game Development 2]
<br/><br/>
.subtitle[Week 3: From Processing to Unity]
<br/><br/><br/><br/><br/><br/>
.date[Mar 2022]
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

[Visual Studio](https://docs.unity3d.com/Manual/ScriptingSettingUp.html) code editors

- [VS Community](https://visualstudio.microsoft.com/vs/unity-tools/)
  - [officially recommended IDE](https://youtu.be/KH0nqTpOVuM)
  - [installation](https://youtu.be/nna58aKumJ8)
- [VS Code](https://code.visualstudio.com/docs/other/unity)
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

http://codesaying.com/understanding-screen-point-world-point-and-viewport-point-in-unity3d/

https://docs.unity3d.com/Manual/CollidersOverview.html

https://learn.unity.com/tutorial/world-interactions-blocking-movement

https://docs.unity3d.com/ScriptReference/Vector2.MoveTowards.html

[Update() vs FixedUpdate()](https://forum.unity.com/threads/rubys-adventure-2d-beginner-official-thread.661837/page-6#post-5477628)

---

class: center
name: webgl-build
## WebGL build

<iframe src="https://rvirmoors.github.io/webgl/p5-unity/" width="600" height="406"></iframe>

- [hosting on github.io](https://medium.com/@aboutin/host-unity-games-on-github-pages-for-free-2ed6b4d9c324) 
  - embed: <100 mb per file // dl: <1GB per file, with [LFS](https://git-lfs.github.com/) ([just github.com](https://github.com/git-lfs/git-lfs/issues/3498))
- [hosting on itch.io](https://itch.io/docs/creators/html5) 
  - embed: <200MB per file, <500MB total // dl: <1GB per file*

---
name: sharing-your-project
# Sharing your project

right-click on Scene > *Export Package...*

- → myProject.unitypackage

upload to classroom, google drive, etc

---

name: assignment       
class: left
#  Assignment

Refactor the project using:
- GameObject-connected scripts
- Colliders 
- as many Unity-specific helpers as you find useful

Share your work as text / video / .unitypackage