//
//  main.m
//  26_点语法
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main()
{
    Person *p = [Person new];
    
    //点语法的本质还是方法调用
    p.age = 10; // [p setAge:10];
    
    int a = p.age; // [p age];
    
    p.name = @"Jack";
    
    NSString *s = p.name;
    
    return 0;
}
