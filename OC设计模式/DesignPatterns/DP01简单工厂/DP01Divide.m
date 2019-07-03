//
//  DP01Divide.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP01Divide.h"

@implementation DP01Divide
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;
- (CGFloat)caculate {
    if (self.numberB == 0) {
        assert(self.numberB);
        return 0;
    }
    return self.numberA/self.numberB;
}
@end
