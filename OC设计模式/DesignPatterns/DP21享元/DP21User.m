//
//  DP21User.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/26.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP21User.h"

@implementation DP21User
- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
@end
