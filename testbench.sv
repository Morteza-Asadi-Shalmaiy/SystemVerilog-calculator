timescale 1ns/1ps

module testbench;

  parameter nb = 48;

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

    a = 10; b = 5; operand = 3'd0;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);

    a = 10; b = 20; operand = 3'd1;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);

    a = 7; b = 3; operand = 3'd2;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);

    a = 20; b = 4; operand = 3'd3;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);

    a = 2; b = 3; operand = 3'd4;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);

    a = 9; b = 9; operand = 3'd7;
    #10;
    $display("%d = operand\t\t%d = a\t\t%d = b\t\t%d = result", operand, a, b, result);
    
    $display("\n");
    
  end

endmodule
