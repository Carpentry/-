//
//  DP14HRDepartment.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP14HRDepartment.h"

@implementation DP14HRDepartment
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
- (void)display {
    NSLog(@"%@的HR部门",self.name);

}

- (void)lineofDuty {
    NSLog(@"%@,培训员工",self.name);

}
@end
