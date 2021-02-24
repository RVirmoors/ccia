---
layout: default
---

# Intro to Max & Pd and Unity   <!-- omit in toc -->

We look at dataflow languages and game engines: how to approach them and what they're good for.

1. [Interactive programming](#interactive-programming)
2. [Max & Pd](#max--pd)
3. [Unity](#unity)


## Interactive programming

The [Wikipedia](https://en.wikipedia.org/wiki/Interactive_programming) article provides a good working definition for interactive programming: "the procedure of writing parts of a program *while it is already active*."{% sidenote 'live_coding' 'Not to be confused with *live coding*, which is a subset of interactive programming where on-the-fly coding is itself a focal point in a performative act. We discuss the topic more in depth in a [[later course](live-coding)].'%}

The implications will become obvious in time, but it is important to note them from the start: learning a visual, dataflow language such as Max, Pure Data, or TouchDesigner (and to an extent a game engine such as Unity), is *not* just an continuation of the traditional programming path which we covered in the previous module. This may boil down to the representation of two aspects: program *state* and data *flow*.

The **state** of a program represents everything it "knows"{% sidenote 'program_state' 'This includes variable values and execution trace.'%}
 at a certain point in time. In traditional, imperative programming languages, the program state is explicitly determined by the sequence of operations specified in the code. 

 We have already seen how easily state can be obscured through an interactive programming environment like Jupyter notebooks:

 {% marginnote 'jupyter-ex' 'What is the value of `a` at the end of this execution chain?' %}
 ```python
[1]     a = 2
[4]     a *= 3
[3]     a /= 2
 ```

In a dataflow language, the state of the program results from the **flow** of data through an architecture of routes{% sidenote 'routes' '"patch cords" in Max/Pd, "wires" in TD.'%}
connecting nodes,{% sidenote 'nodes' '"objects" in Max/Pd, "operators" in TD.'%}
which can be represented as a graph.

To sum up, we might compare imperative and dataflow languages as follows:

{% marginnote 'tab1' 'Table 1: state and flow in traditional vs graphical programming' %}

| | imperative | dataflow |
| | (Java, JS, Python, C#) | (Max, Pd, TD) |
| --- | :---: | :---: |
| state | primary | secondary |
| flow | secondary | primary |

In Max et al, the state is hidden from the user,{% sidenote 'peek' 'You can of course peek at the values at any point in the graph.'%}
while in Processing et al, the program flow is determined by the specified sequence of operations and their in-out dependencies.{% sidenote 'trace' 'The flow of data can be made explicit by running a debug trace.'%}


## Max & Pd

[Max](//cycling74.com/products/max/) was created by [Miller Puckette](//msp.ucsd.edu/) in the 80s at IRCAM, to facilitate the composition and programming of complex digital synthesizers via an interactive and modular interface.{% sidenote 'bg' 'More information on Puckette`s history and motivation for Max and Pure Data can be heard in an excellent interview on the [Art+Music+Technology podcast]().'%} In the 90s he spun off [Pure Data](//puredata.info/) as a free, open-source, and relatively lightweight alternative to Max, which continued to be developed by David Zicarelli's new company, [Cycling '74](//cycling74.com/).

The mid-90s brought real-time signal processing capabilities to consumer computers, which were incorporated into both Max (which became known as *Max/MSP*) and Pure Data. In 2003, Cycling '74 released *Jitter*, which added matrix manipulation for video and 3D graphics to Max. Another milestone was *Max for Live* and the subsequent merger of Cycling '74 with Ableton in the 2010s. This, as well as [other integrations](https://cycling74.com/products/extendmax) such as JavaScript, Node for Max, and a vast array of external [contributions](https://cycling74.com/packages), has maintained Max as a main choice for real-time creative computing for decades now.

Meanwhile, Pd has also continued to evolve as a community-based project, mirroring many of Max's capabilities and (often via [libpd](https://github.com/libpd/libpd)) being embedded into pretty much any platform that will support it, including [Raspberry Pi](https://puredata.info/docs/raspberry-pi), [Unity](https://github.com/LibPdIntegration/LibPdIntegration), and even [Max](http://msp.ucsd.edu/software.html) itself.

**

Max and Pd both deal with *data* of different types (symbols, numbers, audio buffers, matrices etc) flowing through *objects*,{% sidenote 'thesaurus' 'Hundreds of objects come built in, and can be supplemented by external packages. The Max documentation has several ways of presenting them; an underused one is the [object thesaurus](https://docs.cycling74.com/max8/vignettes/thesaurus).'%} which have accompanying *help patches*. These are small programs demonstrating the functionality and common use cases of a certain object, and can be taken apart and reused.

Here's how you might add two numbers together:

{% maincolumn 'attachments/max-pd-purr.png' 'Patcher UI comparison.<br/>Left: Max. Middle: Pd.<br/>Right: [Purr Data](https://agraef.github.io/purr-data-intro/), a community-driven, extended fork of Pd--including a modernised frontend.' %}
The Max interface (left) has probably the best look and feel, but the usage of the `[+]` object is the exact same: at least for core components, the transition from Max to Pd and vice versa is trivial.

## Unity

Primarily a game engine, Unity is today a significant tool in the digital arts, mainly due to its state-of-the-art 3D graphics and scripting features, and to its adoption of technologies such as current VR, AR, mobile and web platforms. Meanwhile, it's just as potent for basic 2D interactive apps, which is how we'll begin our approach, transitioning [[from Processing to Unity]].

Now, Unity exposes C# as its scripting API language. This means you write code in C# (an imperative language just like Java et al), and then the corresponding architecture is compiled in the back-end for you before the app is able to run. So far this sounds more like the workflow in Processing, than the interpreted graphical tools we described above.

{% marginfigure 'unity' 'attachments/unity-editor-play.png' 'The Unity editor in play mode. Users are able to change parameter values and test their impact on the interaction dynamics in real time.' %}
Interactive development in Unity is enabled through altering program parameters during runtime. This tightens the build-test loop, letting you iterate through various changes much faster. As you progress, you might find yourself speeding up development even more by creating your own [custom editors](https://docs.unity3d.com/Manual/editor-CustomEditors.html), integrated into the Unity UI in edit and/or play mode.

Unity comes with an extensive [learning platform](https://learn.unity.com/) and [documentation](https://docs.unity3d.com/). See the [resources](resources#unity) page for more links to lessons and tutorials.

Last but not least, as with Max, there exist free / open-source alternatives to the big industry players, Unity and Unreal Engine. I encourage you to check out [Godot](https://godotengine.org/features), a community-powered game engine which also has the ability to deploy to web, mobile and XR.


[//begin]: # "Autogenerated link references for markdown compatibility"
[from Processing to Unity]: from-processing-to-unity.md "From Processing to Unity "
[//end]: # "Autogenerated link references"