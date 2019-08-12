//
//  DP10Factory.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP10User.h"
#import "DP10Department.h"

@protocol DP10Factory <NSObject>

- (id<DP10User>)createUser;
- (id<DP10Department>)createDepartment;

@end

