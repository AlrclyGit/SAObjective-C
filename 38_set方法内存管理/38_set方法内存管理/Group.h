//
//  Group.h
//  38_set方法内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Member.h"
@interface Group : NSObject{
    Member * _Member;
    int _Great;
}

- (void)setMember:(Member *)member;
- (Member *)Member;

- (void)setGreat:(int)great;
- (int)Great;
@end
