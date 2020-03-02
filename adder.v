//adder.v
//Coder: Shah-Rukh Khimani
//module designed to add to inputs for outputs (binary)
module adder(input x, input y, input cin, output A, output out);
 //start code
assign {out,A} =  cin + y + x;
  //end of code
endmodule //end of module