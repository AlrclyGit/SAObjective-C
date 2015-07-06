//
//  Person.m
//  45_ARC循环引用
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)dealloc{
    NSLog(@"Person is dealloc");
}
@end
