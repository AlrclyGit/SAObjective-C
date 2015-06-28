//
//  Card.h
//  41_循环引用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Menber;

@interface Card : NSObject
@property (nonatomic,assign) Menber* menber;
@end
