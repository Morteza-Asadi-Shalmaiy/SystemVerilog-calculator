
timescale 1ns/1ps

module calculator #(
    parameter nb = 64 // قابل تغییر بودن تعداد رقم
)(
    input signed [nb-1:0] a, //پشتیبانی از اعداد منفی هم درج شده
    input signed [nb-1:0] b,
  
    input [2:0] operand,
  
    output reg signed [nb-1:0] result
);

  always @(*) begin

    case (operand)
      
      0: result = a + b; // شرایط خاص نداره
      
      1: result = a - b; // همینطور
      
      2: result = a * b; // همینطور
      
      3: begin // شرط تقسیم بر صفر
           if (b == 0) begin
             $display("Warning! Division by zero. Setting result to x.");
           end else begin
             result = a / b;
           end
         end

      4: begin // شرط تقسیم بر صفر
           if (b < 0) begin
             result = 40'bx;
             $display("Warning! negative exponent. Setting result to x.");
           end else begin
             result = a ** b;
           end
         end
        
      default:begin
        result = 40'bx; // عملیات غیر مقبول
        $display("Warning! wrong operand. Setting result to x.");
      	end
    endcase
    
    //چک کردن 12 رقمی بودن
    if (result > 999999999999 || result < -999999999999) begin
    	$display("Warning! Result exceeds 12 decimal digits. Setting result to x.");
    	result = {nb{1'bx}};
    end
  end

endmodule
//یه ماشین حساب با 5 عمل اصلیمون، که میشه تعداد رقم محاسبه رو عوض کرد یعنی کردش مثلا از 12 به 20 و اعداد منفی پشتیبانی میکنه و براش داخل کیس حتی تعریف شده که اگه آپرند اشتباه شد چیکار کنه
