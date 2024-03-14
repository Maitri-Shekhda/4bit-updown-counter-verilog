module tb_counter;

reg choice, clk, reset;
wire [3:0] q;
upordown_counter tb_counter(q, choice, clk, reset);

initial begin
    $dumpfile("tb_counter.vcd");
    $dumpvars(1); // all signals should be included in the vcd file
    choice = 0;
    clk = 0;
    reset = 0;
    #200 $finish;
end

always #80 choice = ~choice; // toggles the up_down every 80ns to get periodic signal
always #8 clk = ~clk; // toggles the value of clk every 8 time units, generating a clock signal with a 50% duty cycle.

endmodule
