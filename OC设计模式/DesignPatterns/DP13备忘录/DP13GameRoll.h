//
//  DP13GameRoll.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DP13GameState;
@interface DP13GameRoll : NSObject
@property (nonatomic, assign) NSInteger life;
@property (nonatomic, assign) NSInteger attack;
@property (nonatomic, assign) NSInteger defeat;
- (void)getState;
- (DP13GameState *)saveState;
- (void)fightBoss;
- (void)rebackState:(DP13GameState *)state;
@end

NS_ASSUME_NONNULL_END
