//
//  DP22ScaleExpression.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/27.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP22ScaleExpression.h"

@implementation DP22ScaleExpression
- (void)executeWithKey:(DP22ExpressionType)key value:(double)value {
    NSString *scale = nil;
    NSInteger valueInt = value;
    switch (valueInt) {
        case 1:{
            scale = @"低音";
            break;
        }
        case 2:{
            scale = @"中音";
            break;
        }
        case 3:{
            scale = @"高音";
            break;
        }
        
    }
    
    NSLog(@"scale:%@",scale);
}
@end
