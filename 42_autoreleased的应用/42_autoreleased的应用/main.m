//
//  main.m
//  42_autoreleased的应用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menber.h"
#import "SAGod.h"
/*
 1.系统自带的方法里没有包含alloc、new、copy，说明返回的对象都是autorelease的
 2.开发中经常会提供一些类方法，快速创建一个已经autorelease过的对象
 21.创建对象时不要直接用类名，一般用self。
 + (id)menber{
 return [[[self alloc]init]autorelease];
 }
 */



int main() {
    @autoreleasepool {
        Menber* menber = [Menber menberWithAge:100];
        
        SAGod* dog = [SAGod menberWithAge:10];
        dog.money = 100;
    }
    return 0;
}

void set(){
    
    
    Menber* m = [[Menber alloc]init];
    
    m.age = 200;
    
    [m release];
    
    @autoreleasepool {
        
        //Menber* m = [Menber menber];
        
        //Menber* m2 = [Menber menberWithAge:100];
        
    }
    
    NSString *str = @"12345";
}
