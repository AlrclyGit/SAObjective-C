//
//  main.m
//  48_协议应用—代理模式
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Agent.h"
#import "AKB.h"
int main() {
    
        Person* p = [[Person alloc]init];
        
        AKB *a = [[AKB alloc]init];
        
        p.delegate = a;
        
        [p buyTicket];
    
    return 0;
}

void stst(){
    //  人
    Person *p = [[Person alloc]init];
    // 代理
    Agent *a = [[Agent alloc]init];
    
    //设置代理人
    p.delegate = a;
    
    //人打算去看电影
    [p buyTicket];
    
}