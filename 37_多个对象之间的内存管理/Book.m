//
//  Book.m
//  37_多个对象之间的内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Book.h"

@implementation Book

- (void)setPrice:(int)price{
    _price = price;
}
- (int)Price{
    return _price;
}
- (void)dealloc{
    NSLog(@"Book对象被回收");
    [super dealloc];
}
@end
