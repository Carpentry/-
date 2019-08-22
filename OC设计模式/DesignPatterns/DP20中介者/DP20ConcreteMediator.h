//
//  DP20ConcreteMediator.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP20Mediator.h"
#import "DP20Colleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP20ConcreteMediator : DP20Mediator
@property (nonatomic, strong) DP20Colleague *colleague;
@property (nonatomic, strong) DP20Colleague *colleague1;


@end

NS_ASSUME_NONNULL_END
