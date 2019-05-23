# The epic classical/quantum computer outreach project

## `Where quantum information processing meets best coding practice`

![My image](https://github.com/johnrscott/PiQuantum/blob/master/hardware/prototype_front.png)

Our quantum computer currently has 4 qubits with corresponding Leds used to display
their state and 4 quantum gates (operations) available.

# Operations you can do on the quantum computer

We have separated the list of things you can do on our quantum computer into two
sections. The first are a quantum version of the operations that a regular digital
computer can do,we call these _coherent_. The second set of operations are only available
on a quantum computer.

## Implemented

- 1 & 2 Measure the state
- 1 & 4 Reset to vacuum state
- 3 & 4 Switch to cycling through the state display

- X
- Y
- H
- Control modifier (Hold this and select another gate to do a Controlled version of it)
  e.g Control + X to do CNOT

## Coherent Digital operations

This is a list of the existing operations available:

- **NOT** gate (X) - Changes between red & blue
- **XOR** gate (CNOT) - Changes a 2nd qubit only if the 1st is blue
- **SWAP** gate (SWAP) - Swaps two qubits colours with each other
- **AND** gate (Toff) - A logical AND between two qubits

## Quantum only operations

The operations are:

- **HALF** gate (H) - Mixes the colours of a qubit
- **PHASE** gate (Z) - Changes between the two colour mixes

# Qubit state display (Read out)

We use RGB Leds to display the state of the qubits, there are two display modes
currently. When using our computer, by only using the coherent digital operations there
is no difference between the two display modes. Only when using the _quantum_ only
operations are you able to see a difference.

## Displaying the average state

The default mode is the display averaging state mode. The _coherent_ digital operations
only ever show red or blue. In this display mode we find that doing the **HALF**
operation on a qubit causes the light to change from red -> purple or blue -> white.

## Cycling through the superposition

As mentioned, the display cycling mode does nothing to all combinations of patterns
achieved with only using the _coherent_ digital operations. We find that it does show a
difference between the quantum only operations however. Doing a **HALF** operation to get
a purple qubit shows that when the display mode is changed the qubit will cycle between
being red and blue. This is no accident, the **HALF** operation puts the qubit halfway
between the red and blue state which is why we see purple.

# How it works

# Parts list

- Raspberry Pi
- GPIO Jumper cables
- Breadboard
- RGB LEDs
- Buttons
- Shift registers for serial to parallel

# Software

# Running the code

## Libraries

### WiringPi (for SPI interface)

It might already be installed on the Raspberry Pi. If it's not, it can be install by
cloning git://git.drogon.net/wiringPi and running ./build. The SPI interface also needs
to be enabled in raspi-config.

## Notes on program requirements

- Multiplayer
- Drop in/ drop out number of players
- Multiple game modes
- Should be able to switch between games in the program
- GLOB to exit Program and Pi

# I/O feature (For each player)

- A controller object
- Remapping Leds / Buttons
- Reading push buttons
- Variable Led colours
- Flashing Leds

# State_race game

- Dictionary of patterns
- Read in a list of _cool_ states to show, either randomly pick one or used qubits
  buttons to select the state you want.
- Save button to add a state to the file
- Use controller to build up a state in real time

J Scott, john.scott@bristol.ac.uk
O Thomas, oliver.thomas@bristol.ac.uk
