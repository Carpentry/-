//
//  DP18Barbecue.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/15.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP18Barbecue.h"

@interface DP18Barbecue()

@end

@implementation DP18Barbecue
- (instancetype)initWithCooker:(DP18Cooker *)cooker
{
    self = [super init];
    if (self) {
        self.cooker = cooker;
    }
    return self;
}

- (void)barbecueAction {
    
}
@end
