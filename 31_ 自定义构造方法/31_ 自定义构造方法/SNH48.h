//
//  SNH48.h
//  31_ 自定义构造方法
//
//  Created by SuzukiAlrcly on 15/6/17.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNH48 : NSObject
@property NSString *name;
@property int age;
/*
 自定义构造方法的规范
 1.一定是对象方法，一定以 - 开关
 2.返回值一般是instancetype类型
 3.方法名一般以init开关
 */

- (instancetype)initWithName:(NSString *)name;
- (instancetype)initWithAge:(int)age;
- (instancetype)initWithName:(NSString *)name AndAge:(int)age;

@end
