`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 11:50:43 AM
// Design Name: 
// Module Name: open_drain
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


module open_drain
   #(parameter WIDTH=2)
   (input  [WIDTH-1:0] Din,
    output [WIDTH-1:0] ODout
   );

   genvar i;
   generate
      for (i=0; i<WIDTH; i=i+1) begin
         OBUFT OBUFT_inst (
            .O(ODout[i]),
            .I(1'd0),
            .T(Din[i])
         );
      end
   endgenerate

endmodule
