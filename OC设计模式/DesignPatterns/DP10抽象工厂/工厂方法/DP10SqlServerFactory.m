//
//  DP10SqlServerFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP10SqlServerFactory.h"
#import "DP10SqlServerUser.h"
#import "DP10SqlServerDepartment.h"

@implementation DP10SqlServerFactory
- (id<DP10User>)createUser {
    return [[DP10SqlServerUser alloc] init];
}

- (id<DP10Department>)createDepartment {
    return [[DP10SqlServerDepartment alloc] init];
}
@end
