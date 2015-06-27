//
//  Status.m
//  40_模型设计练习
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Status.h"

@implementation Status
- (void)dealloc{
    [_text release];
    [_icon release];
    [_time release];
    [_user release];
    [_retweetStatus release];
    [super dealloc];
}
@end
