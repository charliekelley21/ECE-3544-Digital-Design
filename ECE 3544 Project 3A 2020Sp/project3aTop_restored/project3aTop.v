////////////////////////////////////////////////////////////////////////////////
// Filename: project3aTop.v
// Author:   Jason Thweatt
// Date:     08 October 2015
// Revision: 1
//
// This is the top-level module for ECE 3544 Project 3a.
// Do not modify the module declaration or ports in this file.
// When synthesizing to the DE1-SoC, this file should be used with the provided
// Quartus project so that the FPGA pin assignments are made correctly.
//
// YOU MUST MAKE THE PIN ASSIGNMENTS FOR THE INPUTS AND OUTPUTS OF THIS MODULE.
// FOLLOW THE INSTRUCTIONS IN THE DOCUMENT ON PIN PLACEMENT.
// CONSULT THE MANUAL FOR INFORMATION ON THE PIN LOCATIONS.

module project3aTop(SW, LED, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
    input  [9:0] SW;
    output [9:0] LED;
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	 
//  This should allow you to see the values of the switches on the LEDs.
    assign LED = SW;

//  This maps certain switches to the seven-segment display inputs.
//  Use this as an example of instantiating in the top-level module. 
//  DELETE THESE INSTANTIATIONS IN YOUR FINAL IMPLEMENTATION. Use the next set
//  of comments to instantiate the modules that implement the system. Then
//  delete this comment.

    project3aTest U0(SW[1:0], HEX0);
	 project3aTest U1(SW[3:2], HEX1);
	 project3aTest U2(SW[5:4], HEX2);
	 project3aTest U3(SW[7:6], HEX3);
	 project3aTest U4(SW[9:8], HEX4);
    project3aTest U5(SW[9:8], HEX5);	 

//  Your top-level module should conform to block diagram provided in the
//  specification. It should contain:
//  - One instantiation of your 74HC85. Use SW[7:4] as input A. Use SW[3:0]
//    as input B. Connect I(A>B) and I(A<B) to logic-0. Connect I(A=B) to
//    logic-1.
//  - Two instantiations of your seven-segment display driver from HW 3.
//    Use HEX2 to display the value of input A. Use HEX0 to display the
//    value of input B.
//  - One instantiation of the seven-segment display driver that you
//    create to show the comparison symbol. Use HEX1 to display the symbol.

endmodule
