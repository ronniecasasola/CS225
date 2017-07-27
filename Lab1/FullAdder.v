`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:37 08/23/2016 
// Design Name: 
// Module Name:    FullAdder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FullAdder(FA_A, FA_B, Cin, FA_S, Cout);

input FA_A, FA_B, Cin;
output FA_S, Cout;

wire ha0_S, ha0_C, ha1_C;

HalfAdder ha0( .A( FA_A ),
					.B( FA_B ),
					.Cout(ha0_C ),
					.S( ha0_S )
					);
					
					
HalfAdder ha1( .A( Cin ),
					.B( ha0_5 ),
					.Cout(ha1_C ),
					.S( FA_S )
					);
				
assign Cout = ha0_C | ha1_C;


endmodule
