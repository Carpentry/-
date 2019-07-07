//
//  DP02Context.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP02Context.h"
#import "DP02CashNormal.h"
#import "DP02CashRebate.h"
#import "DP02CashReturn.h"
#import "DP02CashBase.h"

@interface DP02Context()

@property (nonatomic, strong) id<DP02CashBase> cashSuper;

@end

@implementation DP02Context


- (instancetype)initWithCashSuper:(id<DP02CashBase>)cashSuper
{
    self = [super init];
    if (self) {
        self.cashSuper = cashSuper;
    }
    return self;
}


- (instancetype)initWithCashType:(CashType)type
{
    self = [super init];
    if (self) {
        switch (type) {
            case CashTypeNormal:
            {
                self.cashSuper = [[DP02CashNormal alloc] init];
                break;
            }
            case CashTypeRebate:
            {
                self.cashSuper = [[DP02CashRebate alloc] initWithMoneyRebate:@"0.8"];
                break;
            }
            case CashTypeReturn:
            {
                self.cashSuper = [[DP02CashReturn alloc] initWithReturn:@"100" condition:@"300"];
                break;
            }
        }
    }
    return self;
}

- (CGFloat)getResult:(CGFloat)money {
    return [self.cashSuper acceptCash:money];
}
@end
