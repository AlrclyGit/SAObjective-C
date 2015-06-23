//
//  main.m
//  27_SEL
//
//  Created by SuzukiAlrcly on 15/6/23.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

/*
 SEL其实是对方法的一种包装，将方法包装成一个SEL类型的数据，去找对应的方法地址。找到方法地址可以调用方法
 
 其实消息就是SEL
 
 
 */

#import <Foundation/Foundation.h>
#import "AKB48.h"

int main() {
    AKB48 *chengshi = [[AKB48 alloc]init];
    
    [chengshi test2];
    

    NSString *name = @"test2";
    
    SEL s = NSSelectorFromString(name);
    
    [chengshi performSelector:s ];

    //间接调用test2方法
    [chengshi performSelector:@selector(test2)];
    
    [chengshi test3:@"123"];
    
    [chengshi performSelector:@selector(test3:) withObject:@"456"];
    
    //[chengshi test2];
    
    //1.把test2包装成SEL类型的数据
    //2.根据SEL数据找到对应的方法地址
    //3.根据方法地址调用对应的方法

    NSLog(@"ただ、君を爱してる");
    return 0;
}
