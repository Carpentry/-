
//
//  DP09SecreteSubject.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP09SecreteSubject.h"
#import "DP09Subject.h"

@implementation DP09SecreteSubject
- (void)notify {
    for (id<DP09Observer> observer in [self getObserverList]) {
        [observer update];
    }
}

@end
