//
//  DP04Proxy.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/10.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP04Proxy.h"
#import "DP04Girl.h"
#import "DP04Base.h"
#import "DP04Pursuit.h"

@interface DP04Proxy()<DP04Base>
@property (nonatomic, strong) DP04Pursuit *pursuit;

@end

@implementation DP04Proxy
- (instancetype)initWithGirl:(DP04Girl *)girl
{
    self = [super init];
    if (self) {
        self.pursuit = [[DP04Pursuit alloc] initWithGirl:girl];
    }
    return self;
}

- (void)gift {
    [self.pursuit gift];
}

- (void)flowers {
    [self.pursuit flowers];
}

- (void)chocolate {
    [self.pursuit chocolate];
}
@end
