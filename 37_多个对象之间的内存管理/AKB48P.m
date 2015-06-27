//
//  AKB48P.m
//  37_多个对象之间的内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "AKB48P.h"

@implementation AKB48P

- (void)setBook:(Book *)book{
    _book = [book retain];
}

- (Book *)Book{
    return _book;
}

- (void)dealloc{
    [_book release];
    NSLog(@"AKB48P对象被回收");
    [super dealloc];
}
@end
