//
//  SNH48.m
//  31_ 自定义构造方法
//
//  Created by SuzukiAlrcly on 15/6/17.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "SNH48.h"

@implementation SNH48

- (instancetype)init
{
    if (self = [super init])
    {
        _name = @"SNH48研究生";
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init])
    {
        _name = name;
    }
    return self;
}

- (instancetype)initWithAge:(int)age
{
    if (self = [super init])
    {
        _age = age;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name AndAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
        return self;
}

@end
