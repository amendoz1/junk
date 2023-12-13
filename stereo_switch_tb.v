module stereo_switch_tb();

reg [15:0] sample;
reg switch;
wire [23:0] headL;
wire [23:0] headR;

stereo_switch dut (
    .sample(sample),
    .switch(switch),
    .headL(headL),
    .headR(headR)
)


initial begin
sample = 16'b1111111111111111;
switch = 0;
#10
switch = 1;
#10 
switch = 0;
#30
switch = 1;
end

endmodule