//
//  NSString+Numbers.h
//  33_分类的应用
//
//  Created by SuzukiAlrcly on 15/6/18.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//
/*
 给NSString增加一个类方法：计算某个字符串中阿拉伯数字的个数
 给NSString增加一个对象方法：计算某个字符串中阿拉伯数字的个数
 */

#import <Foundation/Foundation.h>


@interface NSString (Numbers)

+ (int)numberCountOfString:(NSString *)str;

- (int)numberCount;

@end
