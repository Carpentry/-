//
//  DP03ConcreteDecorator.h
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/7.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP03Decorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP03ConcreteDecorator : DP03Decorator
@property (strong, nonatomic) NSString *addedState;

@end

NS_ASSUME_NONNULL_END
