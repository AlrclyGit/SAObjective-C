//
//  Person.h
//  26_点语法
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    NSString *_name;
}

- (void)setAge:(int)age;
- (int)age;

- (void)setName:(NSString *)name;
- (NSString *)name;

@end
