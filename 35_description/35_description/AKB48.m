//
//  AKB48.m
//  35_description
//
//  Created by SuzukiAlrcly on 15/6/23.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "AKB48.h"

@implementation AKB48

//决定了实例对象的给出结果
- (NSString *)description{
    
    //下面代码会引起列循环
    //NSLog(@"%d",self);
    return [NSString stringWithFormat:@"年龄=%d,名字=%@",_年龄,_名字];
}

//决定了类对象的输出结果
+ (NSString *)description{
    return @"111";
}
@end
