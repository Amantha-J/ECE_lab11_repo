module top(
    input btnU, btnC,
    output [6:0]led
    );
    
    ripple ripCount(
        .clk(btnC),
        .reset(btnU),
        .state(led[2:0])
    );
    
    modCounter mc(
        .clk(btnC),
        .reset(btnU),
        .bit1(led[3]),
        .bit2(led[4]),
        .bit3(led[5]),
        .out(led[6])
    );
    
endmodule
