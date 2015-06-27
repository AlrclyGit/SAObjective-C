//
//  Status.h
//  40_模型设计练习
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
@interface Status : NSObject

@property (nonatomic,retain) NSString* text;
@property (nonatomic,retain) NSString* icon;
//从1970-01-01 00:00:00 开始，一共度过了多少毫秒
//@property (nonatomic,assign) long time;
//@property (nonatomic,assign) time_t time;
@property (nonatomic,retain) NSDate* time;
@property (nonatomic,retain) User* user;
@property (nonatomic,retain) Status* retweetStatus;
@property (nonatomic,assign) int commentsCount;
@property (nonatomic,assign) int retweetCount;

@end
