//
//  DP13GameRoll.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP13GameRoll.h"
#import "DP13GameState.h"
#import "DP13StateManager.h"

@implementation DP13GameRoll
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.life = 100;
        self.attack = 100;
        self.defeat = 100;
    }
    return self;
}

- (void)getState {
    NSLog(@"生命力%ld,防御力%ld,攻击力%ld",self.life,self.defeat,self.attack);
}

- (DP13GameState *)saveState {
    DP13GameState *state = [DP13GameState new];
    state.life = self.life;
    state.defeat = self.defeat;
    state.attack = self.attack;
    return state;
}

- (void)fightBoss {
    self.life = 0;
    self.attack = 0;
    self.defeat = 0;
}

- (void)rebackState:(DP13GameState *)state {
    self.life = state.life;
    self.defeat = state.defeat;
    self.attack = state.attack;
}
@end
