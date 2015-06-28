//
//  Card.m
//  41_循环引用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Card.h"
#import "Menber.h"

@implementation Card
- (void)dealloc{
    NSLog(@"Card");
    //[_menber release];
    [super dealloc];
}
@end
