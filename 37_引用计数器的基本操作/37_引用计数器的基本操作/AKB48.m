//
//  AKB48.m
//  37_引用计数器的基本操作
//
//  Created by SuzukiAlrcly on 15/6/25.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "AKB48.h"

@implementation AKB48

//当一个Person对象被回收的时候，就会自动调用这个方法
- (void)dealloc{
    NSLog(@"Person对象被回收");
    
    //super的dealloc一定要调用，而且庆在最后面
    [super dealloc];
}
@end
