module game (input logic clk, N, S, E, W, reset,
					output logic s6, s5, s4, s3, s2, s1, s0, v, win, death, sw);
					
					room roomFSM (
						.clk(clk),
						.N(N),
						.S(S),
						.E(E),
						.W(W),
						.reset(reset),
						.s6(s6),
						.s5(s5),
						.s4(s4),
						.s3(s3),
						.s2(s2),
						.s1(s1),
						.s0(s0),
						.v(v),
						.win(win),
						.death(death),
						.sw(sw)
					);
					
					sword swordFSM (
						.sw(sw),
						.reset(reset),
						.clk(clk),
						.v(v)
					);
					
endmodule 
