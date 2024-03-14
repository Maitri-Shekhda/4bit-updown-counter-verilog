module upordown_counter(q,choice,clk,reset);
output [3:0]q;
input choice,clk,reset;
reg [3:0]q=0;
always@(posedge clk)
	begin
		if(reset)
			begin
				q<=4'b0;
			end
		else if(choice)
			begin
				q<=q+1;
			end
		else begin
			q<=q-1;
		end
	end
endmodule