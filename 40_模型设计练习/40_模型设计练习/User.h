//
//  User.h
//  40_模型设计练习
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SexMan,
    SexWoman
}Sex;

typedef struct{
    int year;
    int month;
    int day;
}Date;

@interface User : NSObject

@property (nonatomic,retain) NSString* name;
@property (nonatomic,retain) NSString* account;
@property (nonatomic,retain) NSString* password;
@property (nonatomic,retain) NSString* icon;
@property (nonatomic,assign) Sex sex;
@property (nonatomic,retain) NSString* phone;
@property (nonatomic,assign) Date birthday;

@end
