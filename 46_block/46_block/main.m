//
//  main.m
//  46_block
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

//block用来保存一段代码
//block的标志：^
/*
 block跟函数很像：
 1.可以保存代码
 2.有返回值
 3.有形参
 4.调用方式一样
 */

/*
 block要掌握的东西
 1>如何定义block变量
 int (^sumBlock)(int,int);
 void (^myBlock)();
 
 2>如何利用block封装代码
 ^(int a ,int b){
      return a - b;
 };
 ^{
 NSLog(@"----------");
 };
 
 3>block访问外面变量
 *block内部可以访问外面的变量
 *默认情况下，block内部不能修改外面的局部变量
 *给局部变量加上__block关键字，这个局部变量就可以在block内部修改
 
 4>利用typedef定义block类型
 typedef int (^MyBlock)(int,int);
 //以后可以利用MyBlock这种类型来定义Block变量
 
 */


int sum(int a,int b){
    return a + b;
}

int main() {
    
    //定义block变量,如果block没有形参可以略掉后布的（）
    void (^myblock)() = ^(){
        NSLog(@"---------");
        NSLog(@"---------");
    };
    
    myblock();
    
    //函数指针-----------------------------------
    int (*p)(int,int) = sum;
    
    int bb = p(10,12);
    NSLog(@"%d",bb);
    
    //Block计算和-------------------------------------
    int(^sumblock)(int,int) = ^(int a,int b){
        return a + b;
    };
    
    int cc = sumblock(10,24);
    NSLog(@"%d",cc);
    
    //用一个clock输出N条横线------------------------
    void (^mytiao)(int) = ^(int n){
        for (int i = 0; i < n ; i++) {
            NSLog(@"----------");
        }
    };
    
    mytiao(5);

    
    //利用typedef定义block类型---------------------------------
typedef int (^TowInt)(int,int);
    
    TowInt sumBlock;
    
    sumBlock = ^(int a ,int b){
        return a + b;
    };
    
    TowInt minusBlock = ^(int a,int b){
        return a - b ;
    };
    
    TowInt multiplyBlock = ^(int a,int b){
        return a * b;
    };
    
    NSLog(@"%d - %d - %d",sumBlock(10, 9),minusBlock(10,8),multiplyBlock(2,4));
    
    return 0;
}
