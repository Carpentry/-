//
//  DP07Facade.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP07Facade.h"
#import "DP07SubSystemA.h"
#import "DP07SubSystemB.h"
#import "DP07SubSystemC.h"
#import "DP07SubSystemD.h"

@interface DP07Facade()

@end

@implementation DP07Facade

- (void)methodA {
    DP07SubSystemA *sysA = [DP07SubSystemA new];
    [sysA methodA];
    DP07SubSystemB *sysB = [DP07SubSystemB new];
    [sysB methodB];
}

- (void)methodB {
    DP07SubSystemC *sysC = [DP07SubSystemC new];
    [sysC methodC];
    DP07SubSystemD *sysD = [DP07SubSystemD new];
    [sysD methodD];
}

@end
