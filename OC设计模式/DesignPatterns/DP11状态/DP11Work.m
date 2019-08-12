//
//  DP11Work.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP11Work.h"
#import "DP11ForenoonState.h"

@implementation DP11Work

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.state = [[DP11ForenoonState alloc] init];
    }
    return self;
}

- (void)writeProgram {
    [self.state writeProgram:self];
}

@end
