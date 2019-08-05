//
//  DP05OperatonDivFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP05OperatonDivFactory.h"
#import "DP05OperationDiv.h"

@implementation DP05OperatonDivFactory
- (id)createOperation {
    return [DP05OperationDiv new];
}
@end
