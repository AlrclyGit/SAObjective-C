//
//  Person.h
//  28_@propertyt and @synthesize
//
//  Created by SuzukiAlrcly on 15/6/15.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    int _height;
    double _weight;
    NSString *_name;
}

//@Property:可以自动生成某个成员变量的get和set声明
@property int age;
@property int height;
@property double weight;
@property NSString* name;
- (void)setName:(NSString* )name;
- (NSString *)name;
@end
