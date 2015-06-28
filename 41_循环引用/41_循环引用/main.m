//
//  main.m
//  41_循环引用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

/*
 1.@Class的作用：仅仅告诉编译器，某个名称是个类
  @class Card;//仅仅是告诉编译器，Card是一个类
 
 
 2.开发中引用一个类的规范
 21.在.h文件中用@Class来声明类
 22.在.m文件中用#import来包含类的所有东西
 
 3.两端循环引用解决方案
 31.一端用retain
 32.一端用assign
 */
#import <Foundation/Foundation.h>
#import "Menber.h"
#import "Card.h"


int main() {
        
    Menber* m = [[Menber alloc]init];
    
    Card* c = [[Card alloc]init];
    
    m.card = c;
    c.menber = m;
    
    
    [c release];
    [m release];
    return 0;
}
