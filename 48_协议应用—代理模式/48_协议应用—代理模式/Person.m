//
//  Person.m
//  48_协议应用—代理模式
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Person.h"
#import "MyGreat.h"
@implementation Person
//买电影票
- (void)buyTicket{
    //叫代理去帮自己买票（询问一下票价、询问一下票的剩余张数）
    double price = [_delegate ticketPrice];
    int number = [_delegate leftTicketsNUmber];
    NSLog(@"通过代理的帮忙，票价=%f,还乘%d张票",price,number);
}

@end
