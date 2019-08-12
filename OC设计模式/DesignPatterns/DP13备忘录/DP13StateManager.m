//
//  DP13StateManager.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP13StateManager.h"
#import "DP13GameState.h"

@implementation DP13StateManager
- (instancetype)initWithGameState:(DP13GameState *)state
{
    self = [super init];
    if (self) {
        _state = state;
    }
    return self;
}
@end
