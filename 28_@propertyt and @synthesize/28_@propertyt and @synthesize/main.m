//
//  main.m
//  28_@propertyt and @synthesize
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
#import "Cat.h"

int main() {
    Cat *c = [Cat new];
    c.age = 100;
    
    NSLog(@"%d",c.age);
    return 0;
}
