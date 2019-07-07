//
//  DP02Context.h
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP02CashFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP02Context : NSObject
- (instancetype)initWithCashSuper:(id<DP02CashBase>)cashSuper;
- (instancetype)initWithCashType:(CashType)type;
- (CGFloat)getResult:(CGFloat)money;

@end

NS_ASSUME_NONNULL_END
