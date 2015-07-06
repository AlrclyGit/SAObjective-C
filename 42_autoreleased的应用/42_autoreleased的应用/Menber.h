//
//  Menber.h
//  42_autoreleased的应用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Menber : NSObject

@property (nonatomic,assign) int age;

+ (id) menber;

+ (id) menberWithAge:(int)age;
@end
