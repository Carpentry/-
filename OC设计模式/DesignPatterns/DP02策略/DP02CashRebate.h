//
//  DP02CashRebate.h
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP02CashBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP02CashRebate : NSObject<DP02CashBase>
- (instancetype)initWithMoneyRebate:(NSString *)rebate;
@end

NS_ASSUME_NONNULL_END
