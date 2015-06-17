//
//  main.m
//  31_ 自定义构造方法
//
//  Created by SuzukiAlrcly on 15/6/17.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SNH48.h"
#import "SNHTeamS.h"
int main()
{
    SNH48 *李发卡 = [[SNH48 alloc] initWithName:@"李发卡"];
    SNH48 *陈思   = [[SNH48 alloc] initWithName:@"陈思"];
    SNH48 *张昕 = [[SNH48 alloc] initWithAge:16];
    SNHTeamS *莫寒 = [[SNHTeamS alloc] initWithName:@"莫寒" AndAge:16 AndNO:1];
    
    
    NSLog(@"%@And%@",[李发卡 name],[陈思 name]);
    NSLog(@"%d",[张昕 age]);
    NSLog(@"%@妹子的年龄是%d,排名是%d",[莫寒 name],[莫寒 age],[莫寒 no]);
    return 0;

}