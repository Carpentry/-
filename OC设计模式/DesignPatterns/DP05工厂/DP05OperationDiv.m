//
//  DP05OperationDiv.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP05OperationDiv.h"

@implementation DP05OperationDiv
@synthesize numA = _numA;
@synthesize numB = _numB;
- (CGFloat)getResult {
    if (self.numB == 0) {
        assert("fenmucuowu");
        return -1;
    }
    return self.numA / self.numB;
}
@end
