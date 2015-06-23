//
//  AKB48.m
//  34_ 类的本质
//
//  Created by SuzukiAlrcly on 15/6/23.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "AKB48.h"

@implementation AKB48

//当程序启动的时候，就会加载一次项目中所有的类。类加载完毕后就会调用+load方法
+ (void)load{
    NSLog(@"调用了AKB48_load方法");
}

+ (void)initialize{
    NSLog(@"AKB48_initialize");
}
@end
