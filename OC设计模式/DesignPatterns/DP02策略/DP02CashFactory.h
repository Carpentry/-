//
//  DP02CashFactory.h
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/6.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP02CashBase.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,CashType) {
    CashTypeNormal,
    CashTypeRebate,
    CashTypeReturn
};

@interface DP02CashFactory : NSObject
+ (id<DP02CashBase>)createCashFactory:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
