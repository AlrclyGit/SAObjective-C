//
//  husky.h
//  47_protocol
//
//  Created by SuzukiAlrcly on 15/7/6.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

#import "Dog.h"

@protocol MyDogProtocol <NSObject>

- (void)dogTest;

@end

@interface husky : Dog <MyDogProtocol>

@end

@interface husky (SAA)
- (void) saatest;
@end