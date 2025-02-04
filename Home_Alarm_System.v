module Home_Alarm_System(
    input [3:0] sw,
    input m,
    output a
    );
    assign a = (sw[0] | sw[1] | sw[2] | sw[3])& m;
endmodule
