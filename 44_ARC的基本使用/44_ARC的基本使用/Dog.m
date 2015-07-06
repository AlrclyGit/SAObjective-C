//
//  Dog.m
//  44_ARC的基本使用
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)dealloc{
    NSLog(@"Dog is dealloc");
    [super dealloc];
}
@end
