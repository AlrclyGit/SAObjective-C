//
//  Person.m
//  28_@propertyt and @synthesize
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Person.h"

//@synthesize自动生成age的set和get实现，并且会访问_age这具成员变量。

@implementation Person

@synthesize age = _age;
@synthesize height = _height;
@synthesize weight = _weight;
@synthesize name = _name;
- (void)setName:(NSString* )name
{
    _name = name;
}
- (NSString* )name
{
    return _name;
}

@end
