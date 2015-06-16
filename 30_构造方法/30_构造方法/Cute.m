//
//  Cute.m
//  30_构造方法
//
//  Created by SuzukiAlrcly on 15/6/16.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Cute.h"

@implementation Cute
//可爱团对象初始化完毕后，年龄就是12，排名就是1
- (instancetype)init
{
    if ( self = [super init] )
    {
         _no = 1;
    }
    return self;
}
@end


