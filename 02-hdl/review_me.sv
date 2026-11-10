module review_me (
  input         clk,
  input         rst,
  input  [7:0]  a,
  input  [7:0]  b,
  input  [1:0]  sel,
  input         valid,
  output reg [7:0] y,
  output reg       done
);
  reg [7:0] tmp;
  reg [3:0] cnt;

  always @(a or b or sel) begin
    case (sel)
      2'b00: tmp = a + b;
      2'b01: tmp = a - b;
      2'b10: tmp = a & b;
    endcase
  end

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      y <= 0;
      cnt <= 0;
    end else begin
      if (valid) begin
        y <= tmp;
        cnt = cnt + 1;
      end
      if (cnt == 4'd10)
        done <= 1;
    end
  end

  always @(posedge clk) begin
    if (cnt == 4'd15) cnt <= 0;
  end
endmodule
