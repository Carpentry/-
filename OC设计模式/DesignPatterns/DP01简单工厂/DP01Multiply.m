//
//  DP01Multiply.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP01Multiply.h"

@implementation DP01Multiply
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;
- (CGFloat)caculate {
    return self.numberA * self.numberB;
}
@end
