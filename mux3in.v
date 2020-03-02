// mux3in.v
// Coder: Shah-Rukh Khimani
// Function: To convert 3 inputs to a single output
module  mux3input(select, dIn, mux_out);
//input ports
input [1:0] select;
input [2:0] dIn;
//output ports
output mux_out;
//declare wires
wire mux_out;
wire [1:0] select
wire [2:0] dIn
//code start
assign mux_out = dIn(select);
//code end
endmodule //End Of Module mux3input.