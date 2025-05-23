module room (input logic clk, N, S, E, W, v, reset,
					output logic s6, s5, s4, s3, s2, s1, s0, win, death, sw);
					
					logic s0Next, s1Next, s2Next, s3Next, s4Next, s5Next, s6Next;
					
					d_ff dff_0(.q(s0), .d(s0Next), .clk(clk));
					d_ff dff_1(.q(s1), .d(s1Next), .clk(clk));
					d_ff dff_2(.q(s2), .d(s2Next), .clk(clk));
					d_ff dff_3(.q(s3), .d(s3Next), .clk(clk));
					d_ff dff_4(.q(s4), .d(s4Next), .clk(clk));
					d_ff dff_5(.q(s5), .d(s5Next), .clk(clk));
					d_ff dff_6(.q(s6), .d(s6Next), .clk(clk));
					
					always_comb
						begin
						
						if(reset)
							begin
								s0Next = 1;
								s1Next = 0;
								s2Next = 0;
								s3Next = 0;
								s4Next = 0;
								s5Next = 0;
								s6Next = 0;
							end
						else
							begin
								s0Next = ((s1 & ~S & W) | (s0 & ~s1Next));
								s1Next = ((s0 & E) | (s2 & N & ~E & ~W) | (~s0Next & s1 & ~s2Next));
								s2Next = ((s1 & S & ~W) | (s3 & E) | (~s1Next & s2 & ~s3Next & ~s4Next));
								s3Next = ((s2 & ~N & ~E & W) | (~s2Next & s3 & ~s4Next));
								s4Next = (s2 & ~N & E & S & ~W);
								s5Next = ((s4 & ~v) | s5);
								s6Next = ((s4 & v) | s6);
							end
						end
					
					
					assign sw = s3;
					assign death = s5;
					assign win = s6;
					
endmodule

