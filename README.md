# verilog- 
將在大學時所學的verilog紀錄於此，使用軟體:ISE14.7來撰寫。

verilog-overview.pdf為基礎語法與概念的總複習，此文件非本人撰寫。
## Lab 1  
1. 利用Vector及for loop語法，將data內偶數項的vector指定為1，奇數項指定為0。例如: data[0]=1; data[1]=0, data[2]=1, data[3]=0 …等等，並利用$display系統呼叫印出所有data[i]的值(i=31 to 0)。
2. A 4-bit parallel shift register has I/O pins as shown in the figure below. Write the module definition for this module shift_reg. Include the list of ports and port declarations. You do not need to show the internals.
3. 請利用ISE模擬4 to 1 Multiplexer, 跑出波形並驗證其結果是否正確。
    #### [答案](https://github.com/stormteeth/verilog-/tree/main/Lab%201)                                      
## Lab 2
1. 利用gate-level寫法, 透過ISE模擬4-bit Ripple Carry Adder。
要求 : 1. 在1-bit Full Adder內, 其XOR的gate delay=5 ; AND的gate delay=3, OR的gate delay=2 。
跑出波形並驗證其結果是否正確。
2. 其4-bit Ripple Carry Adder計算a=1011, b=1101, c_in=0 , 產生結果輸出, 需經過多少時間 ?
    #### [答案](https://github.com/stormteeth/verilog-/tree/main/Lab%202)
## Lab 3
1. A full subtractor has three 1-bit inputs x, y, and z (previous borrow) and two 1-bit outputs D (difference) and B (borrow). The logic equations for D and B are as follows: 

    D = x'.y'.z + x'.y.z' + x.y'.z' + x.y.z 
    
    B = x'.y + x'.z +y.z 
2. If the equations D, B have regular delays of 10 and 20 ns respectively, pleaseuse the same truth table as above to simulate the operation results. Please show the correct results of D, and B after the simulation. (Hint: Each test pattern has a delay of 10 ns, and thesimulation is finished at 200 ns.) 
    #### [答案](https://github.com/stormteeth/verilog-/tree/main/Lab%203)
## Lab 4
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
    #### [答案](https://github.com/stormteeth/verilog-/tree/main/Lab%204)      
## Lab 5
1. Design an 8-bit counter by using a forever loop, named block, and disabling of named block. The counter starts counting at count = 5 and finishes at count = 67. The count is incremented at positive edge of clock. The clock has a time period of 10. The counter counts through the loop only once and then is disabled. 
2. Define a function to design an 8-function ALU that takes two 4-bit numbers a and b and computes a 5-bit result out based on a 3-bit select signal. Ignore overflow or underflow bits. Utilize the ISE to simulate your design.  
    | Select Signal | Function Output |
    |-------|-----:|
    | 3'b000   |  a  |
    | 3'b001   |  a + b  |
    | 3'b010   |  a - b  |
    | 3'b011   |  a / b  |
    | 3'b100   |  a % 1 (remainder) |  
    | 3'b101   |  a << 1 | 
    | 3'b110   |  a >> 1 |  
    | 3'b111   |  (a > b) (magnitude compare) |
3. Below is a block with nested sequential and parallel blocks. When does the block finish and what is the order of execution of events? At what simulation times does each statement finish execution? 
    ```verilog
    initial begin
        x = 1'b0;
        #5 y = 1'b1;
        fork
            #20 a = x;
            #15 b = y;
        join
        #40 x = 1'b1;
        fork
            #10 p = x;
            begin
                #10 a = y;
                #30 b = x;
            end
            #5 m = y;
        join
    end
    ```
4. Using a while loop, design a clock generator. Initial value of clock is 0. Time period for the clock is 10. 
    #### [答案](https://github.com/stormteeth/verilog-/tree/main/Lab%205)
## Lab 6
1. 利用Finite State Machine(FSM)寫法，寫出其主程式，並利用測試程式讓所有的狀態(從S0->S1->...->S4)都跑過一遍。假設其clock週期為20ns。
   #### [答案](https://github.com/stormteeth/verilog-/tree/main/Lab%206) 
