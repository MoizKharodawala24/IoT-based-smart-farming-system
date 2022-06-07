module fsm_plant_tb();
    reg clk;
    reg reset;
    reg start;
    reg[2:0] temperature;
    reg[3:0] water;
    wire[1:0] ac;
    wire pump;

    integer tb_iter;
    fsm_plant uut(.clk(clk), .reset(reset), .start(start), .temperature(temperature), .water(water), .ac(ac), .pump(pump));

    always
        #5 clk = ~clk;

    initial begin
        $dumpfile ("waveform.vcd");
        $dumpvars;

        clk = 0;
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd0;
        water = 4'd0;

        #10
        reset = 1'd1;
        start = 1'd1;
        temperature = 3'd1;
        water = 4'd1;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd2;
        water = 4'd2;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd1;
        water = 4'd3;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd2;
        water = 4'd4;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd3;
        water = 4'd5;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd4;
        water = 4'd6;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd5;
        water = 4'd7;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd6;
        water = 4'd7;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd6;
        water = 4'd13;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd6;
        water = 4'd14;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd5;
        water = 4'd14;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd4;
        water = 4'd15;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd4;
        water = 4'd15;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd3;
        water = 4'd14;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd3;
        water = 4'd13;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd4;
        water = 4'd7;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd5;
        water = 4'd6;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd6;
        water = 4'd5;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd1;
        water = 4'd4;

        #10
        reset = 1'd0;
        start = 1'd1;
        temperature = 3'd1;
        water = 4'd3;

        #10
        reset = 1'd0;
        start = 1'd0;
        temperature = 3'd1;
        water = 4'd3;

        #10
        reset = 1'd0;
        start = 1'd0;
        temperature = 3'd1;
        water = 4'd3;

        #10
        $finish;
    end
endmodule
