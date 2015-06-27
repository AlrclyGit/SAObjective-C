//
//  Book.h
//  37_多个对象之间的内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject{
    int _price;
}

- (void)setPrice:(int)price;
- (int)Price;
@end
