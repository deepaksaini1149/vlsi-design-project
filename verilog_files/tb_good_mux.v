module tb_good_mux;
reg i0;
reg i1;
reg sel;
wire y;
 good_mux uut (
          .i0(i0),
          .i1(i1),
          .sel(sel),
          .y(y)
);

initial begin 
        $dumpfile("tb_good_mux.vcd");
        $dumpvars(0, tb_good_mux);

        i0 = 0;
        i1=0;
        sel=0;
 
   #300 $finish;
end

always #10 i0 = ~i0;
always #55 i1 = ~i1;
always #75 sel = ~sel;

endmodule
