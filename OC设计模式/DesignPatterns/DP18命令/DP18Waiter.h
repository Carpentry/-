//
//  DP18Waiter.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/15.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP18Barbecue.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP18Waiter : NSObject
- (void)addOrder:(DP18Barbecue *)order;
- (void)removeOrder:(DP18Barbecue *)order;

- (void)notify;
@end

NS_ASSUME_NONNULL_END
