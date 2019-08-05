//
//  DP05OperationSub.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP05OperationSub.h"

@implementation DP05OperationSub
@synthesize numA = _numA;
@synthesize numB = _numB;

- (CGFloat)getResult {
    return self.numA - self.numB;
}
@end
