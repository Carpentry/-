//
//  DP10Department.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP10SQLDepartment.h"

@protocol DP10Department <NSObject>
- (void)insertDepartment:(DP10SQLDepartment *)department;
- (DP10SQLDepartment *)getDepartment;
@end

