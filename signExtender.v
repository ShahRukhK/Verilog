//signExtender.v
//Coder: Shah-Rukh Khimani
//designed to extend the sign
module signextender
//inputs
  input [7:0] unextended; //the msb bit is the sign bit
  input clk;
 //outputs
  output reg [15:0] extended;

always@(posedge clk)
  begin 
    extended <= $signed(unextended);
  end
endmodule // end of module