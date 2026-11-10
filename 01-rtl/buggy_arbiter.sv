// 4-requester round-robin arbiter. Intended: one-hot grant, fair rotation,
// grant only when a request is active, hold grant until request drops.
module buggy_arbiter (
  input  logic       clk,
  input  logic       rst_n,
  input  logic [3:0] req,
  output logic [3:0] gnt
);
  logic [1:0] last;

  always @(posedge clk) begin
    if (!rst_n) begin
      last <= 0;
      gnt  = 4'b0000;
    end else begin
      case (last)
        2'd0: if (req[1]) gnt = 4'b0010; else if (req[2]) gnt = 4'b0100; else if (req[3]) gnt = 4'b1000;
        2'd1: if (req[2]) gnt = 4'b0100; else if (req[3]) gnt = 4'b1000; else if (req[0]) gnt = 4'b0001;
        2'd2: if (req[3]) gnt = 4'b1000; else if (req[0]) gnt = 4'b0001; else if (req[1]) gnt = 4'b0010;
      endcase
      last <= last + 1;
    end
  end
endmodule
