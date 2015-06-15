//
//  main.m
//  27_成员变量的作用域
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "person.h"

@implementation Car : NSObject
{
    int _speed;
    int _wheeels;
}

- (void)setSpeed:(int)speed
{
    _speed = speed;
}

- (int)speed
{
    return _speed;
}
@end



int main() {
    
    /*
    Car *c = [Car new];
    
    c.speed = 10;
    
    NSLog(@"%d",c.speed);
     */
    
    /*
    Person *p = [Person new];
    
    p->_age = 100;
    
    //p->height = 20;
     */
    return 0;
}
