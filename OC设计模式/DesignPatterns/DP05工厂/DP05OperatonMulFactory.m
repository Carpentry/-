//
//  DP05OperatonMulFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP05OperatonMulFactory.h"
#import "DP05OperationMul.h"

@implementation DP05OperatonMulFactory
- (id)createOperation {
    return [DP05OperationMul new];
}
@end
