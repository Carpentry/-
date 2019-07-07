//
//  DP02CashReturn.h
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP02CashBase.h"
NS_ASSUME_NONNULL_BEGIN

@interface DP02CashReturn : NSObject<DP02CashBase>

- (instancetype)initWithReturn:(NSString *)moneyReturn condition:(NSString *)moneyCondition;
@end

NS_ASSUME_NONNULL_END
