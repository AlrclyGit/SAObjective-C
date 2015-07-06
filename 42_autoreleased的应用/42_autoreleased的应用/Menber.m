//
//  Menber.m
//  42_autoreleased的应用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Menber.h"

@implementation Menber
+ (id)menber{
    return [[[self alloc]init]autorelease];
}

- (void)dealloc{
    NSLog(@"Menber is %d ",_age);
    [super dealloc];
}

+ (id) menberWithAge:(int)age{
    Menber* menber = [self menber];
    menber.age = age;
    return menber;
}

@end
