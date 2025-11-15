timescale 1ns/1ps

module calculator #(
    parameter nb = 48 // قابل تغییر بودن تعداد رقم
)(
    input signed [nb-1:0] a, //پشتیبانی از اعداد منفی هم درج شده
    input signed [nb-1:0] b,
  
    input [2:0] operand,
  
    output reg signed [nb-1:0] result
);

  always @(*) begin

    case (operand)
      
      0: result = a + b;
      
      1: result = a - b;
      
      2: result = a * b;
      
      3: result = a / b;

      4: result = a ** b;
        
      default: result = 48'bx; // عملیات غیر قابل قبول

    endcase
  end

endmodule
//یه ماشین حساب با 5 عمل اصلیمون، که میشه تعداد رقم محاسبه رو عوض کرد یعنی کردش مثلا از 12 به 20 و اعداد منفی پشتیبانی میکنه و براش داخل کیس حتی تعریف شده که اگه آپرند اشتباه شد چیکار کنه
