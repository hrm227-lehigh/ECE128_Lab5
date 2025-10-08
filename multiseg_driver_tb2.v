module multiseg_driver_tb;

reg clk;
reg [15:0] bcd_in;
wire [3:0] seg_an;
wire [6:0] seg_cat;

multiseg_driver uut (clk, bcd_in, seg_an, seg_cat);
always begin
    clk = 1'b1;
    #1;
    clk = 1'b0;
    #1;
end
initial begin
    bcd_in = 16'b0000000000000000;
    #10000 bcd_in = 16'b0001001000110100;
    #10000 bcd_in = 16'b0010001101000101;
    #10000 bcd_in = 16'b1000100101100111;
    #10000 bcd_in = 16'b0101000010010011;
    #10000 bcd_in = 16'b1000100010001000;
    #10000 bcd_in = 16'b0101010101010101;
    #10000 bcd_in = 16'b1001010101111001;
    #10000
    $stop;

end
endmodule