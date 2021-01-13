////////////////////////////////////////////////////////////////////////////////
// Filename: project3aTest.v
// Author:   Jason Thweatt
// Date:     10 October 2015
// Revision: 1
//
// This module is for ECE 3544 Project 3a.
// Do not modify the module declaration or ports in this file.
// It provides an example for a component that the designer can instantiate in
// the top-level module.

module project3aTest(SW, HEX);
    input [1:0]  SW;
    output [6:0] HEX;

    assign HEX = {~SW[0], SW[1] & SW[0], SW[1] | SW[0], ~(SW[1] & SW[0]), ~(SW[1] | SW[0]), SW[1] ^ SW[0], ~(SW[1] ^ SW[0])};

endmodule
