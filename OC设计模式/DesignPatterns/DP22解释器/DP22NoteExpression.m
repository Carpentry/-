//
//  DP22NoteExpression.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/27.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP22NoteExpression.h"

@implementation DP22NoteExpression
- (void)executeWithKey:(DP22ExpressionType)key value:(double)value {
    NSString *note = nil;
    switch (key) {
        case DP22ExpressionTypeC: {
            note = @"1";
            break;
        }
        case DP22ExpressionTypeD: {
            note = @"2";
            break;
        }
        case DP22ExpressionTypeE: {
            note = @"3";
            break;
        }
        case DP22ExpressionTypeF: {
            note = @"4";
            break;
        }
        case DP22ExpressionTypeG: {
            note = @"5";
            break;
        }
        case DP22ExpressionTypeA: {
            note = @"6";
            break;
        }
        case DP22ExpressionTypeB: {
            note = @"7";
            break;
        }
        case DP22ExpressionTypeUnknown: {
            note = @"-1";
            break;
        }
    }
    NSLog(@"note:%@",note);
}


@end
