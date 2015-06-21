//
//  main.m
//  33_分类的应用
//
//  Created by SuzukiAlrcly on 15/6/18.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Numbers.h"
/*
 给NSString增加一个类方法：计算某个字符串中阿拉伯数字的个数
 */

int main() {
    //类库：很多类的集合
    //int count = [NSString numberCountOfString:@"123456asd@"];
    int count = [@"1q2wdw3ff4gg12g34" numberCount];
    NSLog(@"%d",count);
    return 0;
}
