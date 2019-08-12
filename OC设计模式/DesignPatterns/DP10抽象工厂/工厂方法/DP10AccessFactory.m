//
//  DP10AccessFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP10AccessFactory.h"
#import "DP10AccessUser.h"
#import "DP10AccessDepartment.h"

@implementation DP10AccessFactory
- (id<DP10User>)createUser {
    return [DP10AccessUser new];
}

- (id<DP10Department>)createDepartment {
    return [DP10AccessDepartment new];
}
@end
