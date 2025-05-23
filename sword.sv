module sword (input logic sw, reset, clk,
					output logic v);
					
					logic s0, s1, s0Next, s1Next;
					
					d_ff dff_0(.q(s0), .d(s0Next), .clk(clk));
					d_ff dff_1(.q(s1), .d(s1Next), .clk(clk));
					
					always_comb
						begin
						
						if(reset)
							begin
								s0Next = 1;
								s1Next = 0;
							end
						else
							begin
								s1Next = (s1 | (s0 & sw));
								s0Next = (s0 & ~sw);
							end
						end
					
					
					assign v = s1Next;
					
endmodule

