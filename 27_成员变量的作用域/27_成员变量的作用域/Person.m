//
//  Person.m
//  27_成员变量的作用域
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    int _aaa; // 默认就是私有
    
    //@implementation中不能定义和@interface中同名的成员变量
    //int _no;
}

- (void)test
{
    _age = 19;
    
    _height = 20;
    
    _weight = 50;
    
    _aaa = 10;
}
- (void)setHeight:(int)height
{
    _height = height;
}
- (int)height
{
    return _height;
}
@end
