//
//  User.m
//  40_模型设计练习
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "User.h"

@implementation User
- (void)dealloc{
    [_name release];
    [_account release];
    [_password release];
    [_icon release];
    [_phone release];
}
@end
