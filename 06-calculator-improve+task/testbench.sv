timescale 1ns/1ps

module testbench;

  parameter nb = 64;

  reg signed [nb-1:0] a;
  reg signed [nb-1:0] b;
  
  reg [2:0] operand;

  reg signed [nb-1:0] result;

  calculator #(nb) uut ( // نمونه سازی از ماژول اصلی ماشین حساب با تست بنچمون و ارتباط این دو
    .a(a),
    .b(b),
    .operand(operand),
    .result(result)
  );
  // task برای اجرای هر تست و نمایش نتیجه (Verilog HDL by Samir Palnitkar بخش 7و8)
  task run_test;
    input signed [nb-1:0] ta;
    input signed [nb-1:0] tb;
    input [2:0] toperand;
    begin
      a = ta;
      b = tb;
      operand = toperand;
      #10;
      $display("%d = operand\t%d = a\t%d = b\t%d = result", operand, a, b, result);
      $display({133{"-"}}); // خط جداکننده
    end
  endtask
  initial begin
    
    $display("\nbasic calculator with just 5 operand : \n");
    $display({133{"-"}});

    run_test(-10, 11, 3'd4);
    // 10^(12) = 100.000.000.000 12 زقمی بودن

    run_test(10, 12, 3'd4);
    // 10^(12) = 1.000.000.000.000

    run_test(999999999999, 1, 3'd0);
    // 999.999.999.999 + 1 = 1.000.000.000.000
    
    run_test(-999999999999, 1, 3'd1);
    // -999.999.999.999 - 1 = 1.000.000.000.000
    
    $display("");
    
  end

endmodule
