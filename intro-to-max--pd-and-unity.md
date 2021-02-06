---
layout: default
---

# Intro to Max & Pd and Unity   <!-- omit in toc -->

1. [Interactive programming](#interactive-programming)
2. [Max & Pd](#max--pd)
3. [Unity](#unity)
4. [Examples](#examples)

## Interactive programming

The [Wikipedia](https://en.wikipedia.org/wiki/Interactive_programming) article provides a good working definition for interactive programming: "the procedure of writing parts of a program *while it is already active*."{% sidenote 'live_coding' 'Not to be confused with *live coding*, which is a subset of interactive programming where on-the-fly coding is itself a focal point in a performative act. We discuss the topic more in depth in a [[later course](live-coding)].'%}

The implications will become obvious in time, but it is important to note them from the start: learning a visual, dataflow language such as Max, Pure Data, or TouchDesigner,{% sidenote 'TD' 'My experience with TD so far is too limited for me to be able to teach it, but it must be mentioned as a powerful tool with a growing community, especially for interactive visuals.'%}
 (and to an extent a game engine such as Unity), is *not* just an continuation of the traditional programming path which we covered in the previous module. This has to do with how two concepts are represented: program **state** and data **flow**.

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
| state | explicit | implicit |
| flow | implicit | explicit |

In Max et al, the state is hidden from the user,{% sidenote 'peek' 'You can of course peek at the values at any point in the graph.'%}
while in Processing et al, the program flow is trivially determined by the fixed sequence of operations and their in-out dependencies.{% sidenote 'trace' 'The flow of data can be made explicit by running a debug trace.'%}


## Max & Pd

{% newthought 'History.' %}[Max](//cycling74.com/products/max/) was created by [Miller Puckette](//msp.ucsd.edu/) in the 80s at IRCAM, to facilitate the composition and programming of complex digital synthesizers via an interactive and modular interface.{% sidenote 'bg' 'More information on Puckette`s history and motivation for Max and Pure Data can be heard in an excellent interview on the [Art+Music+Technology podcast]().'%} In the 90s he spun off [Pure Data](//puredata.info/) as a free, open-source, and relatively lightweight alternative to Max, which continued to be developed by David Zicarelli's new company, [Cycling '74](//cycling74.com/).

The mid-90s brought real-time signal processing capabilities to consumer computers, which were incorporated into both Max (which became known as *Max/MSP*) and Pure Data. In 2003, Cycling '74 released *Jitter*, which added matrix manipulation for video and 3D graphics to Max. Another milestone was *Max for Live* and the subsequent merger of Cycling '74 with Ableton in the 2010s. This, as well as other integrations such as JavaScript, Node for Max, and a vast array of external contributions, has maintained Max as a main choice for real-time creative computing for decades now.

Meanwhile, Pd has also continued to evolve as a community-based project, mirroring many of Max's capabilities and (often via [libpd](https://github.com/libpd/libpd)) being embedded into pretty much any platform that will support it, including [Raspberry Pi](https://puredata.info/docs/raspberry-pi), [Unity](https://github.com/LibPdIntegration/LibPdIntegration), and even [Max](http://msp.ucsd.edu/software.html) itself.

{% newthought 'Basics.' %} Max and Pd both deal with *data* of different types (symbols, numbers, audio buffers, matrices etc) flowing through *objects*,{% sidenote 'thesaurus' 'Hundreds of objects come built in, and can be supplemented by external packages. The Max documentation has several ways of presenting them; an underused one is the [object thesaurus](https://docs.cycling74.com/max8/vignettes/thesaurus).'%} which have accompanying *help patches*. These are small programs demonstrating the functionality and common use cases of a certain object, and can be taken apart and reused.

Here's how you might add two numbers together:

{% maincolumn 'attachments/max-pd-purr.png' 'Patcher UI comparison.<br/>Left: Max. Middle: Pd.<br/>Right: [Purr Data](https://agraef.github.io/purr-data-intro/), a community-driven, extended fork of Pd.' %}

The Max interface (left) has probably the best look and feel, but the usage of the `[+]` object is the exact same--at least for core components, the transition from Max to Pd and vice versa is quite easy.

## Unity

{% newthought 'Primarily' %} a game engine, Unity has

## Examples

