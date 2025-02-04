module Top_Module(
    input [4:0] sw,
    output Alarm,
    output [3:0] an,
    output [6:0] seg   // ? Change 'input' to 'output'
    );
    
    assign an = 4'b1110;
    
    wire [3:0] act;
    assign act = {sw[4], 1'b0, sw[4], 1'b0};
    
    Seven_Segment S1(seg, an, act);
    Home_Alarm_System S2(sw[3:0], sw[4], Alarm);
endmodule
