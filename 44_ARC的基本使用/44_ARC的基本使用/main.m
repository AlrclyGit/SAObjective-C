//
//  main.m
//  44_ARC的基本使用
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKB48.h"
#import "Dog.h"

/*
 ARC的判断准则：只要没有强指针指向对象，就会释放对象
 
 
 1.ARC特点
 1>不允许调用release、retain、retainCount
 2>允许重写dealloc,但是不允许调用[super dealloc]
 3>@property的参数
  *strong : 成员变量是强指针（适用于OC对象类型）
  *weak : 成员变量是弱指针（适用于OC对象类型）
  *assign : 适用于非OC对象类型
 4>以前的retain改为用strong
 
 指针分2针：
 1>强指针：默认情况下，所有的批针都是强指针 __strong
 2>弱指针：__weak
 
 */
int main() {
    Dog* d = [[Dog alloc]init];
    
    Dog* d2 = [[Dog alloc]init];
    
    AKB48* akb = [[AKB48 alloc]init];
    akb.dog = d;
    akb.dog = d2;
    return 0;
}

void tset(){
    //错误写法（没有意义的写法）
    //__weak AKB48* nmb = [[AKB48 alloc]init];
    
    AKB48* akb=[[AKB48 alloc]init];
    
    __weak AKB48 *snh48 = akb;
    
    akb = nil;
    
    snh48 = nil;
    
    NSLog(@"-------------");
    
}