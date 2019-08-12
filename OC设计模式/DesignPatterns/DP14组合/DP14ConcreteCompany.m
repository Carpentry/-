//
//  DP14ConcreteCompany.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP14ConcreteCompany.h"
@interface DP14ConcreteCompany()
@property (nonatomic, strong) NSMutableArray *childList;

@end

@implementation DP14ConcreteCompany

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        _childList = [NSMutableArray array];
    }
    return self;
}

- (void)add:(id<DP14Company>)company {
    [self.childList addObject:company];
}

- (void)remove:(id<DP14Company>)company {
    [self.childList removeObject:company];
}

- (void)display {
    NSLog(@"%@的子公司",self.name);
    for (id<DP14Company> company in self.childList) {
        [company display];
    }
}

- (void)lineofDuty {
    NSLog(@"%@的子公司的职责",self.name);
    for (id<DP14Company> company in self.childList) {
        [company lineofDuty];
    }
}
@end
