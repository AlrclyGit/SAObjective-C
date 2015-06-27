//
//  main.m
//  40_模型设计练习
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Status.h"

int main() {
    //新建2个微博
    Status *s = [[Status alloc]init];
    s.text = @"今天天所真好！";
    
    Status *s2 = [[Status alloc]init];
    s2.text = @"今天天气真的很好";
    s2.retweetStatus = s;
    // 新建2个用户
    User *u = [[User alloc]init];
    u.name = @"2B";
    s.user = u;
    
    User *u2 = [[User alloc]init];
    u.name = @"SB";
    s2.user = u2;
    

    
    [u2 release];
    [u release];
    [s2 release];
    [s release];
    return 0;
}
