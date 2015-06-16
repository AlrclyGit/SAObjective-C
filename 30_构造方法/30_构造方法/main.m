//
//  main.m
//  30_构造方法
//
//  Created by SuzukiAlrcly on 15/6/16.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Cute.h"

//构造方法：用来初始化对象的方法，是个对象方法，-开头
//重写构造方法的目的：为了让对象创建出来，成员变量就会一些固定的值
/*
 重写构造方法的意思点
 1.先调用父类的构造方法（[super inti]）
 2.再进行子类内部成员变量的初始化
int main()
{
    //id p = [Person new];
    /*
     完整地创建一个可用的对象
     1.分配存储空间 +alloc
     2.初始化 -init
     */
    
    //1.调用+alloc分配存储空间
    //id p1 = [Person alloc];
    //2.调用-init进行初始化
    //id p2 = [p1 init];
    //id p3 = [[Person alloc] init];
    
    //每个Person对象创建出来的，他的_age都是10。
    
    Cute *Airi = [Cute new];
    
    NSLog(@"%dAnd%d",[Airi age],[Airi no]);
    
    return 0;
}
