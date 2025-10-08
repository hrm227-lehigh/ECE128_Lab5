module multiseg_driver;

reg clk;
reg [15:0] bcd_in;
wire [3:0] seg_an;
wire [6:0] seg_cat;

multiseg_driver uut (clk, bcd_in, seg_an, seg_cat);



endmodule