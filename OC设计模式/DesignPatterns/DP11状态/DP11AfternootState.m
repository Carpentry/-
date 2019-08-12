//
//  DP11AfternootState.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP11AfternootState.h"
#import "DP11Work.h"
#import "DP11EveningState.h"

@implementation DP11AfternootState
- (void)writeProgram:(DP11Work *)work {
    if (work.hour < 17) {
        NSLog(@"afternoon");
    } else {
        work.state = [DP11EveningState new];
        [work writeProgram];
    }
}

@end
