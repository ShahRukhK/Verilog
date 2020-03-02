//comparator.v
//ShahRukh Khimani
//module Comparator - comparing to inputs for an output

module comparator(input x,input y, output z);
//start of code
assign z = (~x & ~y) | (x&y);
//end of code
endmodule // end of Module comparator
