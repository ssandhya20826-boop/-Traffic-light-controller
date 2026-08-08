module traffic_light_controller(
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);

reg [1:0] state;

parameter RED = 2'b00,
          GREEN = 2'b01,
          YELLOW = 2'b10;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= RED;
    else
    begin
        case(state)
            RED:    state <= GREEN;
            GREEN:  state <= YELLOW;
            YELLOW: state <= RED;
            default: state <= RED;
        endcase
    end
end

always @(*)
begin
    case(state)
        RED:
        begin
            red = 1;
            yellow = 0;
            green = 0;
        end

        GREEN:
        begin
            red = 0;
            yellow = 0;
            green = 1;
        end

        YELLOW:
        begin
            red = 0;
            yellow = 1;
            green = 0;
        end

        default:
        begin
            red = 1;
            yellow = 0;
            green = 0;
        end
    endcase
end

endmodule