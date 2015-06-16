//
//  main.m
//  29_ID
//
//  Created by SuzukiAlrcly on 15/6/16.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void test(id d)
{
    
}


int main() {
    id d = [Person new];
    
    [d setAge:10];
    
    [d setObj:20];
    
    NSLog(@"%d",[d age]);
    
    //id = NSObject *
    //万能指针，能指向、操作任何OC对象
    return 0;
}
