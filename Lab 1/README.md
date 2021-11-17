### [題目](https://github.com/stormteeth/verilog-#lab-1)
### 第一題
經由題目要求只要在for迴圈中應相對應的奇數與偶數放入1與0即可

![](result/Lab1-1.png)

### 第二題
依題目只需照要求建置相對應的輸入輸出即可

module shift_reg(reg_out,reg_in,clock)

output[3:0]reg_out;

intput[3:0]reg_in;

input clock;

endmodule

### 第三題
根據題目我使用gate level的方法打出4對1多工器。建置完後產生RTL

最外層:

![](result/Lab1-3-1.png)

中間層:

![](result/Lab1-3-2.png)

寫好測試程式後的Simulation結果:

![](result/Lab1-3-3.png)


