//
//  Person.h
//  48_协议应用—代理模式
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol MyGreat;

@interface Person : NSObject


- (void) buyTicket;

// 拥有一个代理属性
// 代理的类名随便，必须遵守MyGreat协议
@property (nonatomic,strong) id<MyGreat> delegate;

@end
