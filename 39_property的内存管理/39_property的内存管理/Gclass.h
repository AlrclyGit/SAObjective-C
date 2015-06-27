//
//  Gclass.h
//  39_property的内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Member.h"

/*
 1.set内存管理想着的参数
 * retain : release旧值，ratain新值（适用于OC对象类型）
 * assign : 直接赋值（默认，适用于非OC对象类型）
 * copy : release旧值，copy新值
 
 2是否要生成set方法
 * readworite : 同时生成setter和getter的声明、实现
 * readonly : 只会生成getter的声明、实现
 
 3.多线程管理
 * nonatomic : 性能高
 * atomic : 性能低（默认）
 
 4.setter和getter方法的名称
 * setter : 决定了set方法的名称，一定要有个冒 号：
 * getter : 决定了get方法的名称（一般用在BOOL类型）
 * 返回BOOL类型的方法名一般以is开头
 
 */

@interface Gclass : NSObject

@property(readonly) int 年龄;

@property(assign) int time;

@property(retain) Member* book;


@end
