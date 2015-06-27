//
//  GClass.m
//  38_set方法内存管理
//
//  Created by SuzukiAlrcly on 15/6/27.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "GClass.h"

@implementation GClass
- (void)setNO:(int)no{
    _no = no;
}
- (int)no;{
    return _no;
}

- (void)setName:(NSString *)name{
    if (_name != name) {
        [_name release];
        _name = [name retain];
    }
}
- (NSString *)name{
    return _name;
}

- (void)setMember:(Member *)member{
    if (member != _member) {
        [_member release];
        _member = [member retain];
    }
}
- (Member *)member{
    return _member;
}

- (void)setInc:(Inc *)inc{
    if (inc != _inc) {
        [_inc release];
        _inc = [inc retain];
    }
}
- (Inc *)inc{
    return _inc;
}
- (void)dealloc{
    [_name release];
    [_member release];
    [_inc release];
    [super dealloc];
}
@end
