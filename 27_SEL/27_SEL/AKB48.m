//
//  AKB48.m
//  27_SEL
//
//  Created by SuzukiAlrcly on 15/6/23.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "AKB48.h"

@implementation AKB48
+ (void)test{
    NSLog(@"test");
}


- (void)test2;{
    
    //_cmd代表着当前方法
    //_cmd == @selector(test2);
    //会引发死循环[self performSelector:_cmd];
    NSString *str = NSStringFromSelector(_cmd);
    NSLog(@"test2____%@",str);
}


- (void)test3:(NSString *)abc{
    NSLog(@"test3%@",abc);
}
@end
