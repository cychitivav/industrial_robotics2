# Industrial robotics 2
This repository contains the development of the fifth laboratory practice of the robotics class at the Universidad Nacional de Colombia. This practice consists of using the industrial manipulator ABB IRB 140 to use the digital inputs and outputs available on the **DSQC 652** module, which was inside the IRC5 controller.

### Materials
* RobotStudio version 5 or higher
* Datasheet ABB IRB 140
* ABB IRB 140 industrial manipulator
* ABB IRC5 controller
* DSQC 652 module
* Electric panel with push buttons and pilot lights

## Workobject selector
Initially, the code from the [industrial_robotics](https://github.com/cychitivav/industrial_robotics) repository was used, where the trajectory to write the letters BJC on a board was performed; with these codes, the activity consisted of using the digital inputs of the DSQC 652 module to select the workobject where the trajectory was to be performed.

### I/O creation
To create the digital inputs and outputs, we use the configuration interface in RobotStudio, adding each of the entries with the same name as the physical controller inside LabSir.

<div align="center">
    <img src="https://user-images.githubusercontent.com/30636259/177681629-53bcc18b-1d18-47e3-b61e-ff4a8d69c3e1.png" width"750" />
</div>


#### Digital inputs
Although the digital inputs and outputs module has 16 inputs available, in this case we only used two due to the two workobjects we had. These signals were:

* __DI_01__: Digital input 1 (leftmost pushbutton on the electrical panel)
* __DI_02__: Digital input 2 (second pushbutton)

#### Digital outputs
As with the digital inputs, the outputs were added with the following names:

* __DO_01__: Digital output 1 (leftmost pilot light)
* __DO_02__: Digital output 2 (second pilot light)

> __Note__: With the four signals created, the controller must be restarted in order to use them.


### Logic
The logic of this program is very simple, a while loop is used to keep the program running (although another option was to use the continuous mode of the controller), and it constantly checks if any of the two buttons are pressed; the first button makes the `whiteboard` workobject equal to the horizontal plane workobject and the second one makes it equal to the inclined plane workobject. Then the steps are as follows:

1. Selection of the workobject
1. Lighting of pilot light 1
1. Running the BJC trajectory
1. Switch off pilot 1


## Pick and Place

## Video
[YouTube video](https://www.youtube.com/watch?v=zrBCsUkrswo)

https://user-images.githubusercontent.com/30636259/177679096-a39f70ef-5da7-4171-9726-d30791b897c5.mp4

