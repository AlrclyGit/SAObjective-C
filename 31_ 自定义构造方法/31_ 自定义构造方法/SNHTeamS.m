//
//  SNHTeamS.m
//  31_ 自定义构造方法
//
//  Created by SuzukiAlrcly on 15/6/17.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "SNHTeamS.h"

@implementation SNHTeamS
- (instancetype)initWithNO:(int)no
{
    if (self = [super init]) {
        _no = no;
    }
    return self;
}
//父类的属性交给父类方法去处理、子类方法处理自己的属性
- (instancetype)initWithName:(NSString *)name AndAge:(int)age  AndNO:(int)no
{
    //将name、age传递到父类方法中进行初始化
    if (self = [super initWithName:name AndAge:age]) {
        _no = no;
    }
    return self;
}

/*
- (instancetype)initWithName:(NSString *)name AndAge:(int)age  AndNO:(int)no
{
    if (self = [super init]) {
        _no = no;
        self.name = name;
        self.age = age;
    }
    return self;
}*/


@end
