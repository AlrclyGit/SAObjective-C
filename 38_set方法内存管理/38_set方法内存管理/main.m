//
//  main.m
//  38_set方法内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Group.h"
#import "Member.h"
#import "GClass.h"
#import "Inc.h"

/*
 内存管理代码规范：
 1.只要调用alloc,必须有release(autorelease)
    如果OC对象不是通过alloc产生的，就不需要release
 
 2.set方法的代码规范
 21.基本数据类型：直接复制
 22.OC对象类型
 221.先判断是不是新传进来的对象
 222.对旧对象做一次release
 223.对新对象做一次retain
 
 3.dealloc方法的代码规范
 31.一定要调用[super dealloc],而且就在最后面
 32.对self（当前）所拥有的其他OC对象做一次release
 */
int main() {
    GClass *S = [[GClass alloc]init];
    
    //这行代码有内存泄漏，chengshi指针的作用体现出来了
    //S.member = [[Member alloc]init];
    
    [S release];
    
    //这行代码有内存泄漏，chengshi指针的作用再次体现出来了
    //[[[Member alloc]init]setAge:22];
    
    return 0;
}

void test3(){
    GClass *S = [[GClass alloc]init];
    
    Member *陈思 = [[Member alloc]init];
    S.member = 陈思;
    
    Inc *彩夏 = [[Inc alloc]init];
    S.inc = 彩夏;
    
    [S setName:@"S组"];
    
    [彩夏 release];
    [陈思 release];
    [S release];
}

void test2(){
    Group *SNH48 = [[Group alloc]init];
    SNH48.Great = 1;
    
    Member *陈思 = [[Member alloc]init];
    陈思.Age = 22;
    SNH48.Member = 陈思;
    
    Member *李艺彤 = [[Member alloc]init];
    李艺彤.Age =19;
    SNH48.Member = 李艺彤;
    
    [陈思 release];
    [李艺彤 release];
    [SNH48 release];
}
void test1(){
    Group *SNH48 = [[Group alloc]init];
    SNH48.Great = 1;
    
    Member *陈思 = [[Member alloc]init];
    陈思.Age = 22;
    
    SNH48.Member = 陈思;
    
    [陈思 release];
    
    SNH48.Member = 陈思;
    
    [陈思 release];
    [SNH48 release];
}


void test(){
    Group *SNH48 = [[Group alloc]init];
    SNH48.Great = 1;
    
    Member *陈思 = [[Member alloc]init];
    陈思.Age = 22;
    
    SNH48.Member = 陈思;
    
    Member *李艺彤 = [[Member alloc]init];
    李艺彤.Age =19;
    
    SNH48.Member = 李艺彤;
    
    [陈思 release];
    [李艺彤 release];
    [SNH48 release];
}