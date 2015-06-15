//
//  Person.h
//  27_成员变量的作用域
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

/*
 @public : 在任何地方都能直接访问对象的成员变量
 @private : 只能在当前类的对象方法中直接访问
 @protected : 可以在当前类及其子类的对象方法中直接访问(@implementation中默认是@private)
 @package : 只要处在同一个框架中，就能直接访问对象的成员变量(@interface中默认是@protected)
 
 @interface和@implementaton中不能声明同名的成员变量
 */
#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public // 在任何地方都能直接访问对象成员变量
    int _age;
    
    @private // 只能在当前类的对象方法中直接访问
    int _height;
    
    @protected //能在当前类和子类的对象方法中直接访问(默认)
    int _weight;
    int _money;
}

- (void)setHeight:(int)age;
- (int)height;

- (void)test;

@end