//
//  DP11ForenoonState.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP11ForenoonState.h"
#import "DP11Work.h"
#import "DP11NoonState.h"

@implementation DP11ForenoonState
- (void)writeProgram:(DP11Work *)work {
    if (work.hour < 12) {
        NSLog(@"forenoon");
    } else {
        work.state = [DP11NoonState new];
        [work writeProgram];
    }
}
@end
