//
//  main.m
//  47_protocol
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

/*
 1、协议的定义
 @protocol 协议名称<NSObject>
 //方法声明列表。。。。
 @end
 
 2.如何遵守协议
 1>类遵守协议
 @interface 类名 ： 父类名 <协议名称1，协议名称2>
 @end
 
 2>协议遵守协议
 @protocol 协议名称 <其他协议名称1，其他协议名称2>
 @end
 
 3> 协议中方法声明的关键字
 1>@required(默认)
    要求实现，如果没有实现，会发出警告
 2>@optional
    不要求实现，怎样不会有警告
 
 4、定义一个变量的时候限制这个变量保存的对象遵守某个协议
    类名<协议名称>* 变量名；
    id<协议名称> 变量名；
 NSObject<Myprotocol>* obj;
 id<Myprotocol> obj2;
 
 如果没有遵守对应的协议，编译器会警告
 
 5.@property中声明的属性也可以做一个遵守协议的限制
 @Property (nonatomic,sttong) 类名<协议名称>* 属性名；
 @Property (nonatomic,sttong) id<协议名称>* 属性名；
 
 @Property (nonatomic,sttong) Dog<MyProtocol>* dog；
 @Property (nonatomic,sttong) id<MyProtocol> dog2;
 
 6. 协议可以定义在单独.h文件中，也可以定义在某个类中
 1>如果这具协议只用在某个类中，应该把协议定义在此类中
 2>如果这个协议用在很多类中，就应该定义在单独文件中
 
 7.分类可用定义在单独.h和.m文件中，也可用定义在原来类中
 1>一般情况下，都是定义在单独文件
 2>定义在原来类中的分类，只要求能看懂语法
 */


#import <Foundation/Foundation.h>
#import "Myprotocol.h"
#import "Menber.h"
#import "Myprotocol3.h"
#import "Dog.h"
#import "husky.h"
int main() {
    Menber* p = [[Menber alloc]init];
    
    p.obj = [[husky alloc]init];
    return 0;
}

void test(){
    NSObject* obj = [[NSObject alloc]init];
    obj = nil;
    
    NSObject* obj2 = @"4324322";
    obj2 = nil;
    
    //要求obj3保存的对象必须是遵守MyProtocol这个协议
    
    NSObject<Myprotocol>* obj3 = [[Menber alloc]init];
    obj3 = nil;
    
    id<Myprotocol> obj4 = [[Menber alloc]init];
    obj4 = nil;
    
    //要求obj5，保存的对象必须遵守MyProtocol3、并且继承了Person
    Menber<Myprotocol3>* obj5 = [[Menber alloc]init];
    obj5 = nil;
   
}