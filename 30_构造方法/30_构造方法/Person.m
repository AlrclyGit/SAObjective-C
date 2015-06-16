//
//  Person.m
//  30_构造方法
//
//  Created by SuzukiAlrcly on 15/6/16.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Person.h"

@implementation Person
//重写init方法

- (instancetype)init
{
    //1.一定要调用回super的init方法:初始化父类中声明的一些成员
    //当前对象 self
    
    //2.如果对象初始化成功，才有必要进行接下来的初始化
    if ( self = [super init] )
    {//初始化成功
        _age = 12;
    }
    //3.返回一个已经初始化完毕的对象
    return self;
}
@end
