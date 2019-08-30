//
//  DP22Expression.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/27.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP22Context.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, DP22ExpressionType) {
    DP22ExpressionTypeO, //实例化为音节
    DP22ExpressionTypeP, //休止符
    DP22ExpressionTypeC,
    DP22ExpressionTypeD,
    DP22ExpressionTypeE,
    DP22ExpressionTypeF,
    DP22ExpressionTypeG,
    DP22ExpressionTypeA,
    DP22ExpressionTypeB,
    DP22ExpressionTypeUnknown
};


@interface DP22Expression : NSObject
- (void)executeWithKey:(DP22ExpressionType)key value:(double)value;
- (void)interpretText:(DP22Context *)context;
@end

NS_ASSUME_NONNULL_END
