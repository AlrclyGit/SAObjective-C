//
//  Group.m
//  38_set方法内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Group.h"

@implementation Group
- (void)setMember:(Member *)member{
    if (member != _Member) {
        //对当前正在使用的车-操作
        [_Member release];
        //引用对象时应进行+1操作
        _Member = [member retain];
    }
   
}
- (Member *)Member{
    return _Member;
}

    //基本数据类型不需要管理内存
- (void)setGreat:(int)great{
    _Great = great;
}
- (int)Great{
    return _Great;
}



- (void)dealloc{
    //不再使用对象时，应该进行-1操作
    [_Member release];
    NSLog(@"等级为%d的Group对象被回收了",self.Great);
    [super dealloc];
}
@end
