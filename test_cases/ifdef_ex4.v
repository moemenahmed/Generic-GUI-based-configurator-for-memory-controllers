
 
`include "params.v"

module dut (
  input enable,
  input [`NUMADDR-1:0] soc_addr,
  input vdd,
  `ifdef USE_WREAL
  input real vddc,
  `else
  input vddc,
  `endif
  input vddf,

  output [31:0] port_a,
  output [15:0] port_b
);

  `ifdef USE_WREAL
  wire real vdd;
  wreal vddf;
  `endif

  always @(*) begin
    // To expose a bug extracting pins when wreal support was added
  end
endmodule