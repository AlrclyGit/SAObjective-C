//
//  main.m
//  37_引用计数器的基本操作
//
//  Created by SuzukiAlrcly on 15/6/25.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

/*
 1.retain、release方法的基本使用
 11.reain:计数器+1，会返回对象本身
 12.release:计数器-1，是没有返回值的
 13.ratainCount:获取当前的计数器
 14.dealloc
   * 当一个对象要被回收的时候，就会调用
   * 一定要调用[super dealloc],这句调用要放在最后面
 
 2.概念
 21.僵尸对象：所占用内存已经被回收的对象，僵尸对象不能再使用
 22.野指针：指向僵尸对象（不可用内存）的指针，给野指针发送消息会报错
 23.空指针：没有指向任何东西的指针（存储的东西是nil、NULL、0），给空指针发送消息汪会报错
 */
#import <Foundation/Foundation.h>
#import "AKB48.h"

int main() {
    
    //
    AKB48 *akb = [[AKB48 alloc]init];
    
    /*
    计数器！
    NSUInteger c = [akb retainCount];
    NSLog(@"计数器%ld",c);
     */
    
    //retain方法返回的是对象本身+1
    [akb retain];
    
    //retain方法返回的是对象本身-1
    [akb release];
    
    //野指针：指向僵尸对象（不可用内存）的指针
    [akb release];
    
    
    
    //message sent to deallocated instance 0x1002066e0
    //给已经释放的对象发送了一条setgae消息
    akb.age = 10;
    
    //指针akb变成空指针
    //akb = nil;
    
    //EXC_BAD_ACCESS:访问了一决坏的内存（已经被回收、已经不可用的内存）
    //野指针错误
    //OC不存在空指针错误，给空指针发送消息，不报错
     [akb release];
    return 0;
}
