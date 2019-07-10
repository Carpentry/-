//
//  DP04Pursuit.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/10.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP04Pursuit.h"
#import "DP04Girl.h"

@interface DP04Pursuit()
@property (nonatomic, strong) DP04Girl *girl;

@end

@implementation DP04Pursuit

- (instancetype)initWithGirl:(DP04Girl *)girl
{
    self = [super init];
    if (self) {
        self.girl = girl;
    }
    return self;
}

- (void)gift {
    NSLog(@"%@",[NSString stringWithFormat:@"给%@送礼物",self.girl.name]);
}

- (void)flowers {
    NSLog(@"%@",[NSString stringWithFormat:@"给%@送花花",self.girl.name]);
}

- (void)chocolate {
    NSLog(@"%@",[NSString stringWithFormat:@"给%@送巧克力",self.girl.name]);
}

@end
