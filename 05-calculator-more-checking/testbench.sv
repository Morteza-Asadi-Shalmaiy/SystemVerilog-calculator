`timescale 1ns/1ps

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

  initial begin
    
    $display("\nbasic calculator with just 5 operand : \n");
    $display({133{"-"}});

    a = -10; b = 11; operand = 3'd4;
    #10;
    // 10^(12) = 100.000.000.000 12 زقمی بودن
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); 
    $display({133{"-"}});
    
    a = 10; b = 12; operand = 3'd4;
    #10;
    // 10^(12) = 1.000.000.000.000
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); 
    $display({133{"-"}});
    
    a = 999999999999; b = 1; operand = 3'd0;
    #10;
    // 999.999.999.999 + 1 = 1.000.000.000.000
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);
    $display({133{"-"}});
    
    a = -999999999999; b = 1; operand = 3'd1;
    #10;
    // -999.999.999.999 - 1 = 1.000.000.000.000
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);   
    $display({133{"-"}});
    
    $display("");
    
  end

endmodule
