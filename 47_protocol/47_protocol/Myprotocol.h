//
//  Myprotocol.h
//  47_protocol
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义了一个名叫Myprotocol的协议
@protocol Myprotocol

@required//要求实现，不实现就会出现警告，默认
- (void)test;

@optional//不要求实现
- (void)test2;
@end
