---
layout: default
---

# Motion to Sound with Regression<!-- omit in toc -->

A basic interactive ML workflow to easily create mappings from motion to sound or other media outputs.

[Input](#input) . [Mapping](#mapping) . [Results](#results)

## Input

I'm going to describe a simple schema, first popularized by Rebecca Fiebrink in her now classic [Machine Learning for Musicians and Artists MOOC](https://www.kadenze.com/courses/machine-learning-for-musicians-and-artists-v/info), to create sound-making instruments by *example* instead of by mathematical specification. Of course, a similar pattern can work for controlling other types of media, such as video, lights etc.

{% newthought 'Our input of choice will be motion' %}, as described by relative movement of a point in 3D space by an [IMU](https://en.wikipedia.org/wiki/Inertial_measurement_unit), aka accelerometer.{% sidenote 'mocap' '(as opposed to *absolute* motion capture systems that report positions in space)'%} How do you get your hands on an IMU? I think you have three major options: [Make it](#make-it). [Buy it](#buy-it). [Phone it](#phone-it).

### Make it

This is probably the cheapest and most fun option, if you're into tinkering with sensors and microcontrollers.{% sidenote 'tinker' 'And if you’re not, it’s a great beginner-friendly project to start with!'%} IMU sensors are very accessible; a 3-axis one like the MPU6050 is fine but you can also go for a so-called 9-axis sensor like the MPU9250 if you think you might use e.g. the gyroscope in the future.

You then hook it up to an Arduino-compatible microcontroller with WiFi{% sidenote 'bt' 'An alternative to WiFi is Bluetooth, as seen for example in [this DYI project](https://inmagicwetrust.wordpress.com/2015/11/04/diy-project-wearable-imu-tracking-sensor/).'%} and, preferably, LiPo battery power. In the past I've used [Adafruit Feather](https://www.adafruit.com/product/2821) boards.

Here's what it turned out like for me: my very first soldering job back in 2019. I didn't know how sensitive soldering wires directly into through-holes can be, but they've held up just fine since then! 

{% maincolumn '../attachments/feather-imu.jpg' 'MPU IMU module stuck onto a HUZZAH Feather with double-sided tape, with 4 wires making the [I2C](https://en.wikipedia.org/wiki/I2C) connection. From [twitter](https://x.com/growlerpig/status/1183276083409555456/photo/1). Remember twitter?' %}

My then-students [Dorin](https://cucicov.com/) and [Maria](https://www.instagram.com/what.is.bart/) helped with constructing fancy bracelets around 3 such sensor+board combos, with a pocket to house the LiPo battery and velcro to strap onto your wrist:

{% maincolumn '../attachments/feather-imu.jpg' 'DYI motion bracelets. Over the years we have used them in various student projects, such as [Out of the Box](https://youtu.be/unKAOfE-q5Y) in Lyon, 2021.' %}

It's then just a matter of getting Arduino code for your MPU sensor and configuring it to send [OSC](https://docs.arduino.cc/libraries/osc/) messages. Here's [one way to do it](https://github.com/RVirmoors/cc-patterns/tree/main/Arduino/sendAcc_OSC).

### Buy it

There are off-the-shelf options if you just want to buy one of these pre-assembled. I haven't used any of them myself but they should work fine. The ones I [was](https://www.ato.com/wireless-imu-sensor) [able](https://zenshin-tech.com/product/lpms-b2/) [to](https://de.aliexpress.com/item/1005006208471099.html) [find](https://www.shimmersensing.com/product/shimmer3-imu-unit/) online are all using Bluetooth and not WiFi.

One version that I'd like to play with someday is the [R-IOT](https://www.modularsquare.com/shop/eowave/r-iot-v3/), developed by IRCAM.{% sidenote 'paper' 'Researching this I found [this 2025 paper](https://www.mdpi.com/1424-8220/25/19/6188) from IRCAM on IMU sensors in performing arts, which looks like a good resource if you want to learn more.'%} Good luck finding it in stock.

The main drawback for all of these would have to be the cost - a few times more expensive than making your own.

### Phone it

{% newthought 'But did you know' %} you had an IMU sitting by your side all this time! Your phone uses an IMU to detect orientation. You just need an app that will let you access the sensor data and send it via OSC. For Android I currently (2026) use [Sensors2OSC](https://sensors2.org/osc/). For iPhone you can use [SeeOSC](https://apps.apple.com/us/app/seeosc/id6740987202).

Let's take a moment to realise how the [composition of forces](https://www.fsps.muni.cz/emuni/data/reader/book-2/10.html) acts on the phone's (or any sensor's) body. We have the gravitational pull acting straight down: this means that, if your phone is lying on a table, the acceleration $$\vec{g}$$, of magnitude $$g = 9.8 m / s^2$$, is acting solely on the *z* axis.

As you start to tilt your phone, you'll see $$\vec{g}$$ being decomposed along the accelerometer's other axes as well:

{% maincolumn '../attachments/phone-anim.gif' 'Composition of forces. If we ignore the force applied by our movement, gravity is the main force acting on the phone’s body. Tilt it around its *x* axis (width) and the gravitational acceleration will be registered on the phone’s *y* and *z* axes. Tilt it around the *y* axis (height), and you’ll see activity on the *x* and *z* axes.' %}

We can observe that, especially if we don't make sudden moves, the 3 values in the accelerometer describe the phone's orientation relative to the ground.{% sidenote 'mag' 'In fact, we have access to just two Euler angles: [pitch and roll](https://en.wikipedia.org/wiki/Aircraft_principal_axes#/media/File:Yaw_Axis_Corrected.svg) (Y and Z). The yaw (X), which would correspond to rotation around the Earth’s perpendicular, cannot be sensed by the accelerometer alone. For this a more complex device would be needed, such as a [9-axis IMU with sensor fusion](https://www.ti.com/lit/an/slaa518a/slaa518a.pdf).'%}

You can use one of those phone running armbands to hold your phone steady while you move. Overall, this solution is probably the most convenient, especially for things like public workshops and demonstrations. It's also very handy in the prototyping stage of a project. I have used it once or twice for performances too, but I don't consider it as reliable as the bespoke microcontroller option.

## Mapping

After you have set up your Arduino or phone app to send OSC accelerometer values to your computer's IP on a specific port (like `8000`), it is time to build the software that will receive them and turn them into sound.

I will be using [PlugData](https://plugdata.org/) for this project, because it's free, open source, and user friendly. But you can very easily adapt the patch to [Max](https://cycling74.com/products/max) if you prefer.

Create an OSC listener and look at the console output.

{% maincolumn '../attachments/pd-imu-receive.png' '' %}

You should see messages that look something like (for Sensors2OSC):

```
/accelerometer 0.0 0.0 9.8
```

or (other apps or Arduino scripts):

```
/accelerometer/x 0.0
/accelerometer/y 0.0
/accelerometer/z 9.8
```

First `route` the values out of the OSC messages.

Sometimes the numbers range between -1 and 1. You can leave them as is, or `scale` them yourself in Pd/Max to the `0.0-1.0` range.

In Pd you want to add an array (the `Add object` button > `Array` in PlugData) to store the values. The result should look something like this:

{% maincolumn '../attachments/pd-imu-inputs.png' '' %}

Now make sure that as you move your sensor, the values move in the `vslider`s and the `inputs` array.

{% newthought 'The interactive ML' %} pipeline is made possible by tools like [Wekinator](https://wekinator.org/), or, if you want to remain in the Pd (or Max) environment, I recommend you use [FluCoMa](https://wekinator.org/). Its [MLPRegressor](https://learn.flucoma.org/reference/mlpregressor/) module implements a feed-forward neural network which can learn continuous mappings between inputs and outputs--exactly what we're going for here.

The remaining steps are pretty much identical to the FluCoMa tutorial on regression, which I am embedding below. See also the resources in the video description and on the [FluCoMa](https://learn.flucoma.org/learn/mlp-training/) [website](https://learn.flucoma.org/learn/mlp-parameters/). They also have an equivalent tutorial video for [Max](https://youtu.be/XfNZzQPdPG0).

<iframe width="55%" height="300" src="https://www.youtube.com/embed/cVKexgWSU0s" title="Controlling a Synth using a Neural Network in Pure Data" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Your final Pd patch should look something like this:

{% maincolumn '../attachments/pd-imu-final.png' '' %}

## Results