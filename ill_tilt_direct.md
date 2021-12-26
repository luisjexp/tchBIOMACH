
# The Tilt Illusion
## What Do You See?
![Simultaneous Tilt Effect](illASSETS/simultaneous_tilt_stimulus.png)

or this one
[https://michaelbach.de/ot/ang-tilt/](https://michaelbach.de/ot/ang-tilt/)

Lets go over the details of the illusion. Below is a figur description of the tilt that we see (see Clifford 2014). 

In the figure, the Y axis shows how much we think or perceive the central grating is tilted, and the x axis tells us the orientation of the surrounding grating. Remember, the central grating is always vertical. The only thing that varies is the tilt of the surround.

Notice that when the surround grating is vertical, we think that the central grating is vertical. However, when the surround orientation is tilted more and more to the left, we think the central grating appears to be tilted more to the right. In this sense, the central and surround grating push eachother away, or are 'repulsed'

Out goal is determine why this happens.

![2015 CLifford](illASSETS/2014_clifford_fig1.png)

# 'Knowing' the Orientation of Objects
Before introducing theories of the tilt illusion, lets go over how our visual system allow us 'know', or 'perceive' the orientation of an object.

### Orientation Tuned Cells
Humans have visual neurons, or 'units', that are *tuned to the orientation*  of elongated stimuli. For example, when you turn your gaze towards a grating composed of vertical bars, a set of neurons begin become activated. There are several key properties about these cells...

> When a neuron is **tuned to orientation**, it will respond specifically to a stimulus is elongated, not stimulus that is circular in shape

> The neurons also exhibit a *base line* level of activation, firing every so often, even when not being stimluated.

> Each unit has a **preferred orientation**. It activates most when a stimulus is at a particular orientation. Different units have different preferred orientations.

> Although a unit has a preferred orientation, it will also respond, though less strongly, to stimuli in somewhat different directions. The strength of the unit's response is inversely related to the difference between its preferred orientation and the orientation of the stimulus. The large this difference, the weaker the response. 

We can visualize these properties using a simple plot, known as the orientation tuning curve. Notice that the neuron in this example responds the most to a stimulus tilted to 90 degrees but also to other orientation 

### Off-balanced networks
So how does the activity of these cells inform us about the angle of an object in the visual scene?

When there are no elongated objects in your visual field, orientation tuned cells are relatively silent, only firing at some baseline rate. In this scenario, all of your orientation tuned cells are in a nicely 'balanced' state: no single group orientation tuned cells is 'winning' over another group. 

What happens you view a orientated object, for example, a vertical grating? Such a stimulus will activate neurons that prefer vertical orientations,  while units tuned to different orientations remain unaffected. In this scenerio, the activity of the network is **off-balanced**. When neurons are in this imbalanced state, you know the orientation of the object: your brain tells you there is a vertically grating because neurons that are tuned to vertical orientations are more active than the rest.

<u>Lets highlight two key points that have been made up to this point</u>
- Your visual system contains units that are tuned to a variety of orientations.
- Orientation is perceives when there is an imbalance in the activity of cells tuned to different orientation. 


## Bell shaped tuning curves
Remember our discussion on [tuning curves](). Orientation Tuning curves are a description of a neurons output in response to an oriented stimulus. A classical tuning curve of orientation selective neurons is roughly bell shaped, ![shown here in figure A](illASSETS/population_tuning_curves_classical.png).  

## Inihbition
Recall our discussion on inhibitory mechanisms. When a visual neuron is excited, it also inhibit other cells. This is known as lateral inhbition. 

Here we are interested in the inhibition that occurs between pairs of orientation tuned cells: Smaller differences in orientation preferences of two cells means that they inhibt eachother more when they become excited. cells with highly similar orientations preferences inhibit eachother greatly. Two Cells with totally different orientation preferences inhibit eachother much less. 

## Population response
When a **population** of visual cells with these bell shaped tuning curves respond to some oriented stimulus, they exhbitit a non-uniform response function.  Namely the tuning curve of the population also shows a bell shaped curve, as seen in figure B. This is an example of an [imbalanced state of activity that we discussed before]()


# The model
So how does the tilt effect work? [Tolhurst and Thomspon 1974]() provide a good explanation. 


> ... inhibition between populations of orientation-specific detectors is responsible for the apparent tilt in simultaneous illusions. A stimulus at one orientation will excite apopulation of detec- tors: the most excited detectors will be those opti- mally sensitive to that orientation. but detectors optimally sensitive to other orientations will also be excited, though less strongly. If a second stimulus is added at a nearby orientation. the detectors responding to this stimulus will inhibit those responding to the first. The amount of inhibition will fall off as the optimal orientations of the interacting detec- tors are made more different. Thus, the population of detectors responding to the first stimulus will not be uniformly inhibited, and it is this non-uniformity which is  thought to give rise to the illusion of apparent tilt (Carpenter and Blakemore. 1973). If some of the detectors are inhibited by the second stimulus, it might be expected that the detection threshold for the first stimulus would be elevated.

![Clifford 2014](illASSETS/2014_clifford_simtile_pureinhibition_model.png)
Lets discuss the figure A B and C above,  (taken from [Clifford 2014]()). 

Figure A shows the popoulation tuning curve that results by when the central vertical grating is presented in isolation from from the surround grating. 

Figure B shows us how a population of cells would suppress, or inhibit an other neural population when a vertical stimulus is presented. 

Figure C shows the state of the neuronal poulation in response to the tilt illusory image when botht the central and surround gratings are presented: 
- The dotted line is population tuning curve of cells respond to the central grating orientated at 90 degress
- The solid black curve shows these cells would respond to the central stimulus in the presence of the surround stimulus
- the red curve shows the inhibitory influence of cells that are activated by the surrounding, tilted grating. 
- Notice how the population responding to to the central grating is shifted away from poulation response to the cetnral grating in the presence of the surround. 

This shows that the repulsion that we experience when viewing the stimulus is due to the shift in the population tuning curves.