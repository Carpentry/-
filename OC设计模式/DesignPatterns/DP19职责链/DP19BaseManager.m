//
//  DP19BaseManager.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP19BaseManager.h"

@implementation DP19BaseManager
- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)dealRequest:(DP19Request *)request {
    
}

@end
