//
//  DP14FinanceDepartment.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP14FinanceDepartment.h"

@implementation DP14FinanceDepartment
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
- (void)display {
    NSLog(@"%@,的财务部门",self.name);

}

- (void)lineofDuty {
    NSLog(@"%@,给员工发钱",self.name);
}
@end
