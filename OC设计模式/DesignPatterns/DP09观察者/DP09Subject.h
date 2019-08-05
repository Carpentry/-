//
//  DP09Subject.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP09Observer.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP09Subject : NSObject
- (void)attach:(id<DP09Observer>)observer;

- (void)detach:(id<DP09Observer>)observer;

- (NSArray *)getObserverList;

- (void)notify;
@end

NS_ASSUME_NONNULL_END
