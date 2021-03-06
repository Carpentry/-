//
//  DP11NoonState.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP11NoonState.h"
#import "DP11Work.h"
#import "DP11AfternootState.h"

@implementation DP11NoonState
-(void)writeProgram:(DP11Work *)work {
    if (work.hour < 13) {
        NSLog(@"noon");
    } else {
        work.state = [DP11AfternootState new];
        [work writeProgram];
    }
}
@end
