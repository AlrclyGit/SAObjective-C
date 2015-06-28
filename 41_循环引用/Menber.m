//
//  Menber.m
//  41_循环引用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Menber.h"
#import "Card.h"
@implementation Menber
- (void)dealloc{
    NSLog(@"Menber");
    [_card release];
    [super dealloc];
}
@end
