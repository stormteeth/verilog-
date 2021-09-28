### 問題一
這題目雖然看起來只是單純的乘法，但其實以電腦的角度來看是只有加法的所以沒辦法直接使用運算符號直接求出結果，而是需要使用funtion這種屬於使用者自訂功能的寫法以達到乘法的功能。其邏輯為宣告一自訂位元大小的名稱然後根據使用者需求宣告輸入的位元數與名稱，之後在內部寫運算式。記得得打上endfuntion來將funtion的內容包起。
```verilog
function [7:0] multi_opter;
input [3:0]a;
input [3:0]b;
multi_opter = a * b;
endfunction
```
