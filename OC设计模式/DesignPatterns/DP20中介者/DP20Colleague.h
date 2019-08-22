//
//  DP20Colleague.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP20Mediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP20Colleague : NSObject
@property (nonatomic, strong) DP20Mediator *mediator;

- (instancetype)initWithMediator:(DP20Mediator *)mediator;
- (void)send:(NSString *)message;
- (void)receive:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
