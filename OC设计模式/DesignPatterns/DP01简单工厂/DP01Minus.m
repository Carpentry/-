//
//  DP01Minus.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP01Minus.h"

@implementation DP01Minus
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

- (CGFloat)caculate {
    return self.numberA - self.numberB;
}
@end
