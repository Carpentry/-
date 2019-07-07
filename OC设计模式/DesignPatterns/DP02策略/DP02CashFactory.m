
//
//  DP02CashFactory.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP02CashFactory.h"
#import "DP02CashNormal.h"
#import "DP02CashRebate.h"
#import "DP02CashReturn.h"


@implementation DP02CashFactory
+ (id<DP02CashBase>)createCashFactory:(NSString *)type {
    CashType caType;
    if ([type hasPrefix:@"da"]) {
        caType = CashTypeRebate;
    } else if ([type hasPrefix:@"man"]) {
        caType = CashTypeReturn;
    } else {
        caType = CashTypeNormal;
    }
    
    switch (caType) {
        case CashTypeNormal:
        {
            return [[DP02CashNormal alloc] init];
        }
        case CashTypeRebate:
        {
            return [[DP02CashRebate alloc] initWithMoneyRebate:@"0.8"];
        }

        case CashTypeReturn:
        {
            return [[DP02CashReturn alloc] initWithReturn:@"100" condition:@"300"];
        }
    }
}
@end
