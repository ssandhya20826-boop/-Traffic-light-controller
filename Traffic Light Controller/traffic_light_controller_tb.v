`timescale 1ns/1ps

module traffic_light_controller_tb;

reg clk;
reg reset;

wire red;
wire yellow;
wire green;

traffic_light_controller uut(
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
);

always #10 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #20 reset = 0;

    #120;

    $finish;
end

initial
begin
    $display("Time  Red Yellow Green");
    $monitor("%0t    %b     %b      %b",
             $time, red, yellow, green);
end

endmodule