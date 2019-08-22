//
//  DP20Colleague.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP20Colleague.h"

@implementation DP20Colleague
- (instancetype)initWithMediator:(DP20Mediator *)mediator
{
    self = [super init];
    if (self) {
        self.mediator = mediator;
    }
    return self;
}

- (void)send:(NSString *)message {
    
}

- (void)receive:(NSString *)message {
    
}
@end
