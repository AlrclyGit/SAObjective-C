//
//  Person.h
//  45_ARC循环引用
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;

@interface Person : NSObject
@property (nonatomic,strong) Dog* dog;
@end
