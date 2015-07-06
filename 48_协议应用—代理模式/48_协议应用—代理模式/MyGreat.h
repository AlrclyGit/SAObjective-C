//
//  MyGreat.h
//  48_协议应用—代理模式
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

//  声明一此跑腿的方法
@protocol MyGreat <NSObject>
//返回票价
- (double) ticketPrice;
//还乘多少张票
- (int) leftTicketsNUmber;
@end
