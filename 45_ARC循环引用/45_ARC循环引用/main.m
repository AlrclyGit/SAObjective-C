//
//  main.m
//  45_ARC循环引用
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

/*
 当两端循环引用的时候，解决方案：
 1>ARC
 1端用strong,另1端用weak
 
 2>非ARC
 1端用retain,另一端用assign
 */

int main() {
    Person* p = [[Person alloc]init];
    Dog* d = [[Dog alloc]init];
    p.dog = d;
    d.person = p;

    return 0;
}
