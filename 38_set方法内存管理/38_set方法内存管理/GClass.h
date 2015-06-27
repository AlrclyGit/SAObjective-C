//
//  GClass.h
//  38_set方法内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Member.h"
#import "Inc.h"

@interface GClass : NSObject{
    int _no;
    NSString *_name;
    Member *_member;
    Inc *_inc;
}

- (void)setNO:(int)no;
- (int)no;

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setMember:(Member *)member;
- (Member *)member;

- (void)setInc:(Inc *)inc;
- (Inc *)inc;
@end
