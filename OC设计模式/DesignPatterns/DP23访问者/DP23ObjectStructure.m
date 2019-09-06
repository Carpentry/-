//
//  DP23ObjectStructure.m
//  DesignPatterns
//
//  Created by 小李 on 2019/9/2.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP23ObjectStructure.h"

@interface DP23ObjectStructure()
@property (nonatomic, strong) NSMutableArray *personList;

@end

@implementation DP23ObjectStructure
- (NSMutableArray *)personList {
    if (!_personList) {
        _personList = [NSMutableArray array];
    }
    return _personList;
}

- (void)add:(DP23Person *)person {
    [self.personList addObject:person];
}

- (void)remove:(DP23Person *)person {
    [self.personList removeObject:person];
}

- (void)display:(DP23Action *)action {
    [self.personList enumerateObjectsUsingBlock:^(DP23Person *per, NSUInteger idx, BOOL * _Nonnull stop) {
        [per accept:action];
    }];
}

@end
