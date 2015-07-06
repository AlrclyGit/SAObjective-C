//
//  Agent.m
//  48_协议应用—代理模式
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//  负责询问电影票情况的

#import "Agent.h"

@implementation Agent
//剩余的票数
- (int)leftTicketsNUmber{
    return 1;
}

//第一张标多少钱
- (double)ticketPrice{
    return 45;
}
@end
