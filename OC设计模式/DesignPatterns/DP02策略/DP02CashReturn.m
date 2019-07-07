//
//  DP02CashReturn.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP02CashReturn.h"

@interface DP02CashReturn()
@property (nonatomic) CGFloat moneyReturn;
@property (nonatomic) CGFloat moneyCondition;

@end

@implementation DP02CashReturn

- (instancetype)initWithReturn:(NSString *)moneyReturn condition:(NSString *)moneyCondition
{
    self = [super init];
    if (self) {
        _moneyReturn = [moneyReturn floatValue];
        _moneyCondition = [moneyCondition floatValue];
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)money {
    if (money >= self.moneyCondition) {
        return money - money / self.moneyCondition * self.moneyReturn;
    }
    return money;
}

@end
