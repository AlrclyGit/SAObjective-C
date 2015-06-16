//
//  Cat.m
//  28_@propertyt and @synthesize
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Cat.h"

@implementation Cat
//默认会访问age这个成员变量，如果没有age，就会自动生成@private类型的age变量
@synthesize age;
@end
