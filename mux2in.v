//mux2in.v 
//Coder: Shah-Rukh Khimani
// Function: To convert 2 inputs to a single output
module  mux2input(
d_0      , // Mux first input
d_1      , // Mux Second input
sel        , // Select input
mux_out      // Mux output
);
//Input Ports
input din_0, din_1, sel ;
//Output Ports
output mux_out;
//Internal Variables
reg  mux_out;
//Code Start
assign mux_out = (sel) ? d_1:d_0
//Code End
endmodule //End Of Module mux2input