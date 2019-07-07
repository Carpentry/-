//
//  DP03PersonDecorator.h
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/7.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP03Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP03PersonDecorator : DP03Person
@property (strong, nonatomic) DP03Person *component;

@end

NS_ASSUME_NONNULL_END
