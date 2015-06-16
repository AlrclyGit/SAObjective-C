//
//  Car.m
//  28_@propertyt and @synthesize
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Car.h"

@implementation Car
//会访问_speed这个成员变量，如果不存在，就会自动生成@private类型的_spe变量
@synthesize speed = _speed;
@synthesize wheels = _wheels;

@end
