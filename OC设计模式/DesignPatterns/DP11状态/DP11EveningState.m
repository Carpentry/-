//
//  DP11EveningState.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP11EveningState.h"
#import "DP11Work.h"
#import "DP11SleepState.h"
#import "DP11RestState.h"

@implementation DP11EveningState
- (void)writeProgram:(DP11Work *)work {
    if (work.isFinished) {
        work.state = [DP11RestState new];
        [work writeProgram];
    } else {
        if (work.hour < 21) {
            NSLog(@"evening");
        } else {
            work.state = [DP11SleepState new];
            [work writeProgram];
        }
    }
}

@end
