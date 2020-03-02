module alu4bit(alu_out, aluin_a, aluin_b, aluin_c, Cin);

input [3:0] aluin_a;
input [3:0] aluin_b;
   input [3:0] aluin_c;
   input [3:0] Cin;
output [3:0] alu_out;
   reg [3:0] alu_out;
   always @(aluin_a, aluin_b, aluin_c, Cin)   
   begin
   case (aluin_c)
   4'b0000: alu_out= aluin_a + aluin_b;
4'b0001: alu_out= aluin_a + aluin_b + Cin;
   4'b0010: alu_out= aluin_a - aluin_b;
   4'b0011: alu_out= aluin_a - aluin_b - Cin;
   4'b0100: alu_out= aluin_a >>> (aluin_b);
   4'b0101: alu_out= aluin_a >> aluin_b ;
   4'b0110: alu_out= rotate_right(aluin_a,aluin_b);
   4'b0111: alu_out= "0000";
   4'b1000: alu_out= aluin_a | aluin_b;
   4'b1001: alu_out= aluin_a & aluin_b;
   4'b1010: alu_out= aluin_a ^ aluin_b;
   4'b1011: alu_out= ~aluin_a;
   default: alu_out= "ZZZZ";
endcase
end


function [3:0] rotate_right;
input [3:0] reg_address;
input [3:0] reg_val;
begin
rotate_right = reg_address >> reg_val;
end
endfunction

endmodule