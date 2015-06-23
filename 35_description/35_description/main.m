//
//  main.m
//  35_description
//
//  Created by SuzukiAlrcly on 15/6/23.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKB48.h"

int main() {
    Class akb48 = [AKB48 class];
    
    NSLog(@"%@",[akb48 description]);
    //1.会调用对象陈思的+description方法
    //2.拿到+description方法的返回值(NSString *)显示到屏幕上
    return 0;
}

void test(){
    AKB48 * 陈思 = [[AKB48 alloc]init];
    
    陈思.年龄 = 20;
    陈思.名字 = @"陈思";
    
    //默认情况下，利用NSLog和%@输出对象时，结果是：<类名：内存地址>
    
    //1.会调用对象陈思的-description方法
    //2.拿到-description方法的返回值(NSString *)显示到屏幕上
    //3.-description方法默认返回的是『类名+内存地址』
    NSLog (@"%@",[陈思 description]);
    
    AKB48 *林思意 = [[AKB48 alloc]init];
    
    林思意.年龄 = 20;
    林思意.名字 = @"林思意";
    
    NSLog(@"%@",[林思意 description]);
    
}