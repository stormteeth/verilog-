### [題目](https://github.com/stormteeth/verilog-#lab-5)
### 問題一
第一題的部分有用到一個新的概念，那便是我們所有的initial begin都可以指定一個編號。當我們的程式有需求時可以把指定的block開啟或結束。在這個例子裡我們可以看到在名為block1裡有clock在運作在此同時下方有個隨正緣時計數的值，名為number。可以看到當上方的block1因number的值計數到70時會把自己結束掉，也因為clock是寫在block1裡的故整個程式可以說是完全停擺了。也達到題目要求的disable forver loop。
![](result/Lab5-1.png)

從monitor可以看到number隨著block1的結束而停在blcok1中規定的70。

![](result/Lab5-2.png)![](result/Lab5-3.png)
### 問題二
只要按照題目要求將8位元算術邏輯單元寫出即可
