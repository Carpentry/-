//
//  DP05OperatonSubFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP05OperatonSubFactory.h"
#import "DP05OperationSub.h"

@implementation DP05OperatonSubFactory
- (id)createOperation {
    return [DP05OperationSub new];
}
@end
