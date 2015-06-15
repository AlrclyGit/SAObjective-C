//
//  Person.m
//  26_点语法
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setAge:(int)age
{
    _age = age;
    
    //会引发死循环
    self.age = age;//[self setAge:age];
}
- (int)age
{
    NSLog(@"age");
    return _age;
    //会引发死循环
    return self.age; //[self age];
    
}

-(void)setName:(NSString *)name
{
    _name =name;
}

- (NSString *)name
{
    return _name;
}
@end
