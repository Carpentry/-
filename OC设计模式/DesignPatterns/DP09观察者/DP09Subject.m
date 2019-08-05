//
//  DP09Subject.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP09Subject.h"

@interface DP09Subject()
@property (nonatomic, strong) NSMutableArray *observerList;

@end

@implementation DP09Subject
- (void)attach:(id<DP09Observer>)observer {
    [self.observerList addObject:observer];
}

- (void)detach:(id<DP09Observer>)observer {
    [self.observerList removeObject:observer];
}

- (NSArray *)getObserverList {
    return [NSArray arrayWithArray:self.observerList];
}

- (void)notify {
    
}

- (NSMutableArray *)observerList {
    if (!_observerList) {
        _observerList = [NSMutableArray array];
    }
    return _observerList;
}

@end
