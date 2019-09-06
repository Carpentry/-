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
    NSArray *strArr = [context.playText componentsSeparatedByString:@" "];
    
    NSString *playKey = [strArr objectAtIndex:0];
    double playValue = [[strArr objectAtIndex:1] floatValue];

    NSMutableArray *strArrM = [[NSMutableArray alloc] initWithArray:strArr];
    [strArrM removeObjectsInRange:NSMakeRange(0, 2)];
    NSString *playText = [strArrM componentsJoinedByString:@" "];
    context.playText = playText;
    NSLog(@"key:%@,value:%f",playKey,playValue);
    [self executeWithKey:[self exchangeKey:playKey] value:playValue];
}

- (DP22ExpressionType)exchangeKey:(NSString *)playText {
    if ([playText isEqualToString:@"c"] || [playText isEqualToString:@"C"]) {
        return DP22ExpressionTypeC;
    } else if ([playText isEqualToString:@"d"] || [playText isEqualToString:@"D"]) {
        return DP22ExpressionTypeD;
    } else if ([playText isEqualToString:@"e"] || [playText isEqualToString:@"E"]) {
        return DP22ExpressionTypeE;
    } else if ([playText isEqualToString:@"f"] || [playText isEqualToString:@"F"]) {
        return DP22ExpressionTypeF;
    } else if ([playText isEqualToString:@"g"] || [playText isEqualToString:@"G"]) {
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
