// Half Adder Logic
  // ui_in[0] = Input A
  // ui_in[1] = Input B
  
  assign uo_out[0] = ui_in[0] ^ ui_in[1]; // Sum
  assign uo_out[1] = ui_in[0] & ui_in[1]; // Carry
  assign uo_out[7:2] = 6'b0;              // Unused outputs set to 0

  // Set unused bidirectional IOs to 0
  assign uio_out = 8'b0;
  assign uio_oe  = 8'b0;

  // List all unused inputs to prevent linter warnings
  wire _unused = &{ena, clk, rst_n, ui_in[7:2], uio_in, 1'b0};
