//
//  Dog.m
//  45_ARC循环引用
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)dealloc{
    NSLog(@"Dog is dealloc");
}
@end
