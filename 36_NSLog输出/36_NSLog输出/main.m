//
//  main.m
//  36_NSLog输出
//
//  Created by SuzukiAlrcly on 15/6/23.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKB48.h"


int main() {
    AKB48 *akb48 = [AKB48 new];
    NSLog(@"%d",__LINE__);//输出当前行号
    //NSLog(@"%s",__FILE__);//NSLog输出C语言字符串的时候，不能有中文
    printf("%s\n",__FILE__); //输出文件所在目录和名称
    NSLog(@"%p",&akb48); //输出指针的地址
    NSLog(@"%p",akb48);  //输出对象的地址
    NSLog(@"%@",akb48);  //输出<类名：对象地址>
    NSLog(@"%s",__func__);//输出当前函数名
    NSLog(@"ただ、君を爱してる");

    return 0;
}
