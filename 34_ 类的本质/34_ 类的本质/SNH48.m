//
//  SNH48.m
//  34_ 类的本质
//
//  Created by SuzukiAlrcly on 15/6/21.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "SNH48.h"

@implementation SNH48
+ (void)test{
    NSLog(@"调用了test方法");
}

//当程序启动的时候，就会加载一次项目中所有的类。类加载完毕后就会调用+load方法
+ (void)load{
     NSLog(@"调用了SNH48_load方法");
}

//当第一次使用这个类的时候，就会调用一次initialize方法
+ (void)initialize{
    NSLog(@"SNH48_initialize");
}
@end
