//
//  Menber.h
//  47_protocol
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Myprotocol;
@protocol Myprotocol2;
@protocol Myprotocol3;
@class husky;

//只要一个类遵守了某一份协议，就能拥有这份协议中的所有方法声明
// : 继承父类
// <> 遵守协议
@interface Menber : NSObject <Myprotocol,Myprotocol2,Myprotocol3>

@property (nonatomic,strong) id<Myprotocol2> obj;

@property (nonatomic,strong) husky* dog;

@end
