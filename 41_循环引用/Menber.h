//
//  Menber.h
//  41_循环引用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

//@Class仅仅是告诉编译器，Card是一个类
@class Card;

@interface Menber : NSObject
@property (nonatomic,retain) Card* card;
@end
