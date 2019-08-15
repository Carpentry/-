//
//  DP18Waiter.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/15.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP18Waiter.h"

@interface DP18Waiter()

@property (nonatomic, strong) NSMutableArray *orderList;
@end

@implementation DP18Waiter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.orderList = [NSMutableArray array];
    }
    return self;
}

- (void)addOrder:(DP18Barbecue *)order {
    [self.orderList addObject:order];
}

- (void)removeOrder:(DP18Barbecue *)order {
    if ([self.orderList containsObject:order]) {
        [self.orderList removeObject:order];
    }
}

- (void)notify {
    for (DP18Barbecue * barbecue in self.orderList) {
        [barbecue barbecueAction];
    }
}

@end
