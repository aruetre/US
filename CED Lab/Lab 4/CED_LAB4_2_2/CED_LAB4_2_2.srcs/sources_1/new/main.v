`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2022 05:37:09 PM
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main (
    input a,b,c,
    output f
    );

    wire w1,w2,w3; //tenemos que declarar los cables de conexión

    //complete la descripción estructural
    nand nand1(w1,a,a);
    nand nand2(w2,w1,c);
    nand nand3(w3,a,b);
    nand nand4(f,w2,w3);

endmodule
