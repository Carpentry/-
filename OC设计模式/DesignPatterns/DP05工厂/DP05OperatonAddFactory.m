//
//  DP05OperatonAddFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP05OperatonAddFactory.h"
#import "DP05OperationAdd.h"

@implementation DP05OperatonAddFactory
- (id)createOperation {
    return [DP05OperationAdd new];
}
@end
