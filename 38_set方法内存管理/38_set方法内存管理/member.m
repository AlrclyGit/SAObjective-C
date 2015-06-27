//
//  Member.m
//  38_set方法内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Member.h"

@implementation Member
- (void)setAge:(int)age{
    _age = age;
}
- (int)age{
    return _age;
}


- (void)dealloc{
    NSLog(@"年龄为%d的Member对象被回收了",self.age);
    [super dealloc];
}
@end
