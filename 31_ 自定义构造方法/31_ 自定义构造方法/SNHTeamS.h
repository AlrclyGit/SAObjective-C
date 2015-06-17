//
//  SNHTeamS.h
//  31_ 自定义构造方法
//
//  Created by SuzukiAlrcly on 15/6/17.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "SNH48.h"

@interface SNHTeamS : SNH48
@property int no;

- (instancetype)initWithNO:(int)no;
- (instancetype)initWithName:(NSString *)name AndAge:(int)age  AndNO:(int)no;
@end
