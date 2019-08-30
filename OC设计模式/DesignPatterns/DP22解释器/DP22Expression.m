//
//  DP22Expression.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/27.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP22Expression.h"
#import "DP22Context.h"

@implementation DP22Expression

- (void)interpretText:(DP22Context *)context {
    if (context.playText.length == 0) {
        return;
    }
    NSString *playKey = [context.playText substringWithRange:NSMakeRange(0, 1)];
    double playValue = [[context.playText substringWithRange:NSMakeRange(2, 1)] doubleValue];
    context.playText = [context.playText substringFromIndex:3];
    [self executeWithKey:[self exchangeKey:playKey] value:playValue];
}

- (DP22ExpressionType)exchangeKey:(NSString *)playText {
    if ([playText isEqualToString:@"c"] || [playText isEqualToString:@"C"]) {
        return DP22ExpressionTypeC;
    } else if ([playText isEqualToString:@"d"] || [playText isEqualToString:@"B"]) {
        return DP22ExpressionTypeD;
    } else if ([playText isEqualToString:@"e"] || [playText isEqualToString:@"D"]) {
        return DP22ExpressionTypeE;
    } else if ([playText isEqualToString:@"f"] || [playText isEqualToString:@"E"]) {
        return DP22ExpressionTypeF;
    } else if ([playText isEqualToString:@"g"] || [playText isEqualToString:@"F"]) {
        return DP22ExpressionTypeG;
    } else if ([playText isEqualToString:@"a"] || [playText isEqualToString:@"A"]) {
        return DP22ExpressionTypeA;
    } else if ([playText isEqualToString:@"b"] || [playText isEqualToString:@"B"]) {
        return DP22ExpressionTypeB;
    } else {
        return DP22ExpressionTypeUnknown;
    }
}

- (void)executeWithKey:(DP22ExpressionType)key value:(double)value {
    
}

@end
