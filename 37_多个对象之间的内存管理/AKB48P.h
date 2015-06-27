//
//  AKB48P.h
//  37_多个对象之间的内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface AKB48P : NSObject{
    Book * _book;
}

- (void)setBook:(Book *)book;
- (Book *)Book;
@end
