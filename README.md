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
### Lab 3
1. A full subtractor has three 1-bit inputs x, y, and z (previous borrow) and two 1-bit outputs D (difference) and B (borrow). The logic equations for D and B are as follows: 

    D = x'.y'.z + x'.y.z' + x.y'.z' + x.y.z 
    
    B = x'.y + x'.z +y.z 
2. If the equations D, B have regular delays of 10 and 20 ns respectively, pleaseuse the same truth table as above to simulate the operation results. Please show the correct results of D, and B after the simulation. (Hint: Each test pattern has a delay of 10 ns, and thesimulation is finished at 200 ns.) 

### Lab 4
1. Give below is an initial block with blocking procedural assignments. At what simulation time is each statement executed? What are the intermediate and final values of a, b, c, d? 

        a = 1'b0;
        b = #15 1'b1;
        c = #10 1'b0;
        d = #25 {a,b,c};

2. Repeat exercise 1 if nonblocking procedural assignments were used. 
3. What is the order of execution of statements in the following Verilog code? Is there any ambiguity in the order of execution? What are the final values of a, b, c, d? 

        a = 1'b0;
        #0 b = c;
        
        c = 1'b1;
        #0 d = a;
        
4. What is the final value of d in the following example? (Hint: See intra-assignment delays.) 
        
        b = 1'b0;
        c = 1'b1;
        #10 b = 1'b1;
        
        d = #20(b&c)
   


