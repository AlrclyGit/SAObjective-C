//
//  Student.m
//  27_成员变量的作用域
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)study
{
    [self setHeight:10];
    
    int h = [self height];
    
    _weight =100;
}
@end
