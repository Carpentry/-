//
//  DP20Mediator.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DP20Colleague;
@interface DP20Mediator : NSObject
- (void)send:(NSString *)message colleague:(DP20Colleague *)colleague;

@end

NS_ASSUME_NONNULL_END
