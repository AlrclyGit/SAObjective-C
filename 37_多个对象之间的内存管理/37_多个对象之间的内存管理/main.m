//
//  main.m
//  37_多个对象之间的内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

/*
 1.你想使用（占用）某个对象，就应该让对象的计数器+1（让对象做一次retain操作）
 2.你不想再使用（占用）某个对象，就应该让对象的计数器-1（让对象做一次release）
 3.谁retain,谁release
 4.谁alloc，谁release
 */

#import <Foundation/Foundation.h>
#import "AKB48P.h"
#import "Book.h"

int main() {
    Book *b = [[Book alloc]init];
    AKB48P *p1 = [[AKB48P alloc]init];
    
    //p1想占用b这本书
    [p1 setBook:b];
    
    [b release];
    b = nil;
    
    [p1 release];
    
    return 0;
}
