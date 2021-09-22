# verilog- 
將在大學時所學的verilog紀錄於此，使用軟體:ISE14.7來撰寫。

verilog-overview.pdf為基礎語法與概念的總複習，此文件非本人撰寫。
### Lab 1
1. 利用Vector及for loop語法，將data內偶數項的vector指定為1，奇數項指定為0。例如: data[0]=1; data[1]=0, data[2]=1, data[3]=0 …等等，並利用$display系統呼叫印出所有data[i]的值(i=31 to 0)。
2. A 4-bit parallel shift register has I/O pins as shown in the figure below. Write the module definition for this module shift_reg. Include the list of ports and port declarations. You do not need to show the internals.
3. 請利用ISE模擬4 to 1 Multiplexer, 跑出波形並驗證其結果是否正確。
### Lab 2
1. 利用gate-level寫法, 透過ISE模擬4-bit Ripple Carry Adder。
要求 : 1. 在1-bit Full Adder內, 其XOR的gate delay=5 ; AND的gate delay=3, OR的gate delay=2 。
跑出波形並驗證其結果是否正確。
2. 其4-bit Ripple Carry Adder計算a=1011, b=1101, c_in=0 , 產生結果輸出, 需經過多少時間 ?


