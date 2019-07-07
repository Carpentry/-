//
//  DP03Decorator.h
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/7.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP03Component.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP03Decorator : DP03Component
@property (strong, nonatomic) DP03Component *component;

@end

NS_ASSUME_NONNULL_END
