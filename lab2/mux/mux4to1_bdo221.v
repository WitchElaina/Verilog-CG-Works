// Mux4to1 using two Mux2to1_BH
module mux4to1 (
	a,b,c,d,sel0,sel1,
	out);

input a,b,c,d,sel0,sel1;
output out;

mux2to1_BH mux0(.a(a),.b(b),.sel(sel0));
mux2to1_BH mux1(.a(c),.b(d),.sel(sel0));

assign out = sel1 ? mux1.out : mux0.out;

endmodule