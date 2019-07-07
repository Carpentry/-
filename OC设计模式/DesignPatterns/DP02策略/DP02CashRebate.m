//
//  DP02CashRebate.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP02CashRebate.h"

@interface DP02CashRebate()
@property (nonatomic) CGFloat moneyRebate;

@end

@implementation DP02CashRebate

- (instancetype)initWithMoneyRebate:(NSString *)rebate
{
    self = [super init];
    if (self) {
        _moneyRebate = [rebate floatValue];
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)money {
    return self.moneyRebate * money;
}

@end
