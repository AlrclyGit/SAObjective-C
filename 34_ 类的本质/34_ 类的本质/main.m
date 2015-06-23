//
//  main.m
//  34_ 类的本质
//
//  Created by SuzukiAlrcly on 15/6/21.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SNH48.h"
#import "AKB48.h"
#import "GoodAKB48.h"

/*
 1.当程序启动时，就会加载项目中所有的类和分类，而且加载后会调用每个类和分类的+load方法。只会调用一次。
 2.当一次使用某个类时，就会调用当关类的+initialize方法
 3.先加载父类，再加载子类（先调用父类的+load方法，再调用子类的+load方法）
    先初始化父类，再初始化子类（先调用父类的+initialize方法，再调用子类的+initialize方法）
 */

int main() {
    [[SNH48 alloc]init];
    
    
    return 0;
}

int test1(){
    SNH48 *snh48s = [[SNH48 alloc]init];
    
    
    //[SNH48 test];
    
    //内存中的类对象
    //类对象 == 类
    
    Class c = [snh48s class];
    [c test];
    
    SNH48 *p2 = [c new];
    
    NSLog(@"00000");
     return 0;
}







int test(){
    //利用SNH48这个类创建了2个SNH48类型的对象
    
    SNH48 *snh48s = [[SNH48 alloc]init];
    
    SNH48 *snh48n = [[SNH48 alloc]init];
    
    SNH48 *snh48h = [[SNH48 alloc]init];
    
    //获取内存中的类对象
    
    Class c = [snh48s class];
    
    Class c2 =[snh48n class];
    
    //获取内存中的类对象
    Class c3 = [SNH48 class];
    
    NSLog(@"c=%p,c2=%p",c,c2);
    //类本身也是一个对象，是个Class类型的对象，简称类对象
    
    /*
     利用Class 创建 SNH48类对象
     
     利用 SNH48类对象 创建 SNH48类型的对象
     
     */
    return 0;
}
