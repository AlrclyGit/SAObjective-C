//
//  NSString+Numbers.m
//  33_分类的应用
//
//  Created by SuzukiAlrcly on 15/6/18.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "NSString+Numbers.h"

@implementation NSString (Numbers)
+ (int)numberCountOfString:(NSString *)str
{
    //1.定义变量计算数字个数
    /*
     int count =0;
     
     for (int i = 0 ; i < str.length; i++){
     
     unichar shortchar = [str characterAtIndex:i];
     
     if (shortchar>='0' && shortchar<='9') {
     count++;
     }
     }
     return count;
     */
    return [ str numberCount];
  
}

- (int)numberCount
{
    int count =0;
    
    for (int i = 0; i<self.length; i++) {
        //取出i这个位置对应的字符
        unichar shortchar = [self characterAtIndex:i];
        //如果这个字符是阿拉伯数字，则count++
        if (shortchar>='0' && shortchar<='9') {
            count++;
        }
    }
    return count;
}
@end
