//
//  main.m
//  41_17-autorelease基本使用
//
//  Created by SuzukiAlrcly on 15/6/28.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

/*
 1.autorelease的基本用法
 11.会将对象放到一个自动释放池中
 12.当自动释放池被销毁时，会对池子里面所有对象做一次release操作
 13.会返回对象本身
 14.调用完autoreleasepool方法后，对象的计数器不变
 
 2.autorelease的好处
 21.不用再关心对象释放的时间
 22.不用再关心什么时候调用release
 
 3.autorelease的使用注意
 31.占用内存较大的对象不在随便使用aotorelease
 32.占用内存较小的对象使用aoturelease，没有太大影响
 
 4.错误写法
 41.alloc之后调用了autorelease,又调用release
 @autoreleasepool {
 Menber *m = [[[Menber alloc]init]autorelease];
 [m release];
 }
 
 42.连续调用多次autorelease
 @autoreleasepool {
 Menber *m = [[[[Menber alloc]init]autorelease]autorelease];
 }
 
 5.自动释放池
 51.在IOS程序运行过程中，会创建个无数个池子。这些池子都是以栈结构存在（先进后出）
 52.当一个对象调用autorelease方法时，会将这个对象放到栈顶的释放池
 
 6.自动释放池的创建方式
 61.IOS 5.0前：：：：
 NSAutoreleasePool* pool = [[NSAutoreleasePool alloc]init];
 Menber *m = [[[[Menber alloc]init]autorelease]autorelease];
 [pool release];
 62.IOS 5.0开始：：：：
 @autoreleasepool {
 Menber *m = [[[[Menber alloc]init]autorelease]autorelease];
 
 }
 */


#import <Foundation/Foundation.h>
#import "Menber.h"


int main() {
    
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc]init];
    
     Menber *m = [[[[Menber alloc]init]autorelease]autorelease];
    
    [pool release];
    
    @autoreleasepool {
        Menber *m = [[[[Menber alloc]init]autorelease]autorelease];
        
        [m release];
    }
    
    

    return 0;
}

void test(){
    @autoreleasepool {
        //{ 开始代表创建了释放池
        //autorelease方法会返回对象本身
        //调用完autoreleasepool方法后，对象的计数器不变
        //autorelease会将对象放到自动释放池
        //当自动释放池被销毁时，会对池子里面的所有对象做一次reease操作
        
        Menber* m = [[[Menber alloc]init]autorelease];
        
        m.age = 10;
        
        @autoreleasepool {
            Menber* m2 = [[[Menber alloc]init]autorelease];
            m2.age = 10;
        }
    }// } 结束代表销毁释放池
}