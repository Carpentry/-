
//
//  DP16Singleton.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP16Singleton.h"

@implementation DP16Singleton
+ (instancetype)singleton {
    static DP16Singleton *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[DP16Singleton alloc] init];
        NSLog(@"单例");
    });
    return singleton;
}
@end
