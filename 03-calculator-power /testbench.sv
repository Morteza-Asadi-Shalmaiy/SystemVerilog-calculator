timescale 1ns/1ps

module testbench;

  parameter nb = 40;

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
    $display("operand, a, b, result");
    $display({106{"-"}});

    a = 1; b = 0; operand = 3'd4;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); // 1^0 = 1  
    
    a = -4; b = 2; operand = 3'd4;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); // -4^(2) = 16
    
    a = -4; b = 3; operand = 3'd4;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); // -4^(3) = -64
    
    a = 4; b = -1; operand = 3'd4;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); // 4^(-1) = 0.25
    
    a = 1; b = -1; operand = 3'd4;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); // 1^(-1) = 1  
    
    a = -10; b = 11; operand = 3'd4;
    #10;
    // 10^(12) = 100.000.000.000 12 زقمی بودن
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); 
    
    a = 10; b = 12; operand = 3'd4;
    #10;
    // 10^(13) = 1.000.000.000.000
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result); 
    
    $display("");
    
  end

endmodule
