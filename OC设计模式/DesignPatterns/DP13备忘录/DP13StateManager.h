//
//  DP13StateManager.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DP13GameState;
@interface DP13StateManager : NSObject
@property (nonatomic, strong) DP13GameState *state;
- (instancetype)initWithGameState:(DP13GameState *)state;

@end

NS_ASSUME_NONNULL_END
