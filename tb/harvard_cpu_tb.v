`timescale 1ns / 1ps

module cpu8_tb;

  reg clk;
  reg rst;

  wire [7:0] pc;
  wire [7:0] next;
  wire [7:0] a;
  wire [7:0] b;
  wire [7:0] y;
  wire [7:0] dout;
  wire [7:0] imm;
  wire [7:0] wdata;

  wire [15:0] instr;
  wire [3:0]  op;
  wire [2:0]  rd;
  wire [2:0]  rs;

  wire wr;
  wire mem_wr;
  wire pc_en;
  wire zf;
  wire cf;
  wire nf;

  cpu8 dut (
    .clk(clk),
    .rst(rst),
    .pc(pc),
    .next(next),
    .a(a),
    .b(b),
    .y(y),
    .dout(dout),
    .imm(imm),
    .wdata(wdata),
    .instr(instr),
    .op(op),
    .rd(rd),
    .rs(rs),
    .wr(wr),
    .mem_wr(mem_wr),
    .pc_en(pc_en),
    .zf(zf),
    .cf(cf),
    .nf(nf)
  );

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    rst = 1;
    #20;
    rst = 0;
  end

  initial begin
    repeat (80) @(posedge clk);
    $finish;
  end

  always @(posedge clk) begin
    if (!rst) begin
      if (wr && rd == 3'b000)
        $fatal("Illegal write to R0");

      if (pc === 8'bx)
        $fatal("PC is undefined");

      if ({zf, cf, nf} === 3'bxxx)
        $fatal("Flags undefined");
    end
  end

  initial begin
    $dumpfile("cpu8_tb.vcd");
    $dumpvars(0, cpu8_tb);
  end

endmodule
