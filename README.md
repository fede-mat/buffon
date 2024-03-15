# buffon

Buffon's Needle Simulation with Graphics
This repository contains MATLAB code for simulating Buffon's Needle Experiment with graphical representation.

Overview
Buffon's Needle Experiment is a classic problem in geometric probability theory, devised by Georges-Louis Leclerc, Comte de Buffon in the 18th century. It explores the probability of a needle dropped at random on a lined sheet of paper crossing one of the lines.

Parameters
numNeedles: Number of needles to simulate
needleLength: Length of the needle
lineSpacing: Spacing between parallel lines
boardWidth: Width of the board
Getting Started
To run the simulation, ensure you have MATLAB installed on your system. Clone this repository and execute the needle.m file. Adjust the parameters as desired to explore different scenarios.

Results
The simulation provides:

Number of needles simulated
Estimated probability of a needle crossing a line
Theoretical probability calculated using the formula: 

​
How It Works
Initialize variables and plot the board.
Simulate the dropping of needles by generating random midpoints and angles.
Determine if each needle crosses a line and update the count accordingly.
Plot the needles and draw parallel lines.
Calculate the estimated and theoretical probabilities.
Display the results.

Contributing
Contributions are welcome! Feel free to submit issues or pull requests.

Acknowledgments
This code is inspired by Buffon's Needle Experiment and aims to provide a visual understanding of the problem.
Special thanks to Georges-Louis Leclerc, Comte de Buffon for proposing this intriguing problem.

Note
I'll try to release a R version as soon as possible in order to use others probability distribution for sampling the data.
