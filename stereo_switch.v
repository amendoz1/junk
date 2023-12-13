module stereo_switch(
    input switch,
    input [15:0] sample,
    output [23:0] head_L,
    output [23:0] head_R
);


assign head_R = switch ? 24'd0: {sample, 8'h00};
assign head_L = switch ? {sample, 8'h00} : 24'd0; 



endmodule