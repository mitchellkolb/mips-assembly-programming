


<h1 align="center">MIPS Assembly Programming</h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/mitchellkolb/mips-assembly-programming?color=007AAC">

  <img alt="Github language count" src="https://img.shields.io/github/languages/count/mitchellkolb/mips-assembly-programming?color=007AAC">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/mitchellkolb/mips-assembly-programming?color=007AAC">

  <img alt="Github stars" src="https://img.shields.io/github/stars/mitchellkolb/mips-assembly-programming?color=007AAC" />
</p>

<p align="center">
<img
    src="https://img.shields.io/badge/Assembly-007AAC?style=for-the-badge&logo=assemblyscript&logoColor=white"
    alt="Website Badge" />
<img
    src="https://img.shields.io/badge/QtSPIM-1E1A5C?style=for-the-badge&logo=qt&logoColor=white"
    alt="Website Badge" />
<img
    src="https://img.shields.io/badge/MacOS-000000?style=for-the-badge&logo=apple&logoColor=white"
    alt="Website Badge" />
</p>

Developed MIPS assembly programs using QtSPIM, including a simple calculator for basic arithmetic operations and array manipulation functions to find the maximum value and summation. This project demonstrates an application of my knowledge while learning computer architecture concepts and low-level programming.

![project image](resources/image1.png)

<details>
<summary style="color:#5087dd">Watch the Full Video Demo Here</summary>

[![Full Video Demo Here](https://img.youtube.com/vi/VidKEY/0.jpg)](https://www.youtube.com/watch?v=VidKEY)

</details>

---


# Table of Contents
- [What I Learned](#what-i-learned-in-this-project)
- [Tools Used / Development Environment](#tools-used--development-environment)
- [Team / Contributors / Teachers](#team--contributors--teachers)
- [How to Set Up](#how-to-set-up)
- [Project Overview](#project-overview)
- [Project Details](#project-details)
  - [Calculator Assembly](#calculator-assembly)
  - [Array Summation Assembly](#array-summation-assembly)
- [Implementation Details](#implementation-details)
- [Files and Structure](#files-and-structure)
- [Results and Observations](#results-and-observations)
- [Future Work](#future-work)
- [Acknowledgments](#acknowledgments)

---

# What I Learned in this Project
- Programming in Assembly for the MIPS Architecture
- How programs are translated into the machine language and how the hardware executes them.
- The hardware/software interface
- Coding in MIPS: loops, registers, and function calls
- Basics of Digital Design
- Single Cycle Simple MIPS Architecture
- Pipelining and Piplined MIPS Architecture



# Tools Used / Development Environment
- Assembly
- QtSPIM
- MacOS





# Team / Contributors / Teachers
- [Mitchell Kolb](https://github.com/mitchellkolb)
- Professor. Nadra Guizani





# How to Set Up
This project was implemented on macbook using:
- Download [QtSPIM](https://spimsimulator.sourceforge.net/) for MacOS, Windows, or Linux.
- Open QtSPIM at this codebase and run the assembly files you choose.


# Project Overview
In this project, I used the QtSPIM GUI to develop MIPS assembly programs like a calculator and array manipulator. These exercises were part of my learning in my computer architecture course, specifically we focused on the MIPS architecture. The main goals for this project were managing registers, utilizing system calls, and adhering to MIPS assembly syntax in QtSPIM.

## Project Details

### Calculator Assembly:
I created a calculator program that requests two integers from the user and performs addition, subtraction, or multiplication based on the user’s input. The operations include:
- **Addition**: The program calculates the sum of two integers inputed by the user.
- **Subtraction**: The program calculates the difference between two integers inputed by the user.
- **Multiplication**: The program calculates the product of two integers inputed by the user.
- **Key Instructions**: I used `add`, `sub`, and `mul` instructions for computations and system calls for input and output.

### Array Summation Assembly:
I also developed a program for array manipulation, which defines a 10-element array and includes the ability to find the maximum value and calculate the summation of the array elements.
- **Array Definition**: The array is initialized with values `{11, 12, -10, 13, 9, 12, 14, 15, -20, 0}`.
- **Find Maximum**: A function iterates through the array to find the maximum value.
- **Calculate Summation**: Another function calculates the summation of the array elements.
- **Key Instructions**: I used `lw`, `sw`, and looping constructs like `beq` and `bne` for iteration.

## Implementation Details
My code involves:
- **Managing Registers**: Effective use of registers such as `$t0`, `$t1`, `$a0`, and `$v0` to hold values and results.
- **System Calls**: Utilizing system calls for reading inputs from the user and printing results.
- **MIPS Syntax**: Adhering to MIPS assembly language syntax, ensuring correct formatting and usage of instructions.

## Files and Structure
- **assembly-problem-1.s**: Contains the calculator assembly program.
- **assembly-problem-2.s**: Contains the array summation assembly program.
- **assembly-problems.pdf**: Details the project requirements for the programs.
- **MIPS-Intro-Questions.pdf** and **MIPS-Intro-Answers.pdf**: Documents providing introductory exercises and solutions in MIPS assembly to aid understanding of basic concepts.

> [!NOTE]
> These files were initially referred to as HW3 and HW4 but have been relabeled for clarity.

## Results and Observations
During development, I observed the following:
- **Calculator Program**: It effectively performed the requested arithmetic operations based on user input. Managing user input and output via system calls was critical.
- **Array Manipulation Program**: The functions correctly identified the maximum value and calculated the summation of the array elements. Using looping constructs and conditional checks was key to the program's functionality.

## Future Work
Future improvements to my code could include:
- **Enhanced Calculator Functions**: Adding more operations like division, modulus, and power.
- **Dynamic Array Handling**: Implementing functionalities to handle arrays of varying sizes, including dynamic memory allocation.
- **Error Handling**: Adding error handling to manage invalid inputs and edge cases effectively because right now it just crashes if it's given incorrect input.



--- 
# Acknowledgments
This codebase and all supporting materials was made as apart of a course for my undergrad at WSU for CPTS 260 - Introduction to Computer Architecture in the Fall of 2020.
