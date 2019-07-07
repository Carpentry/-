//
//  DP03Decorator.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/7.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP03Decorator.h"

@implementation DP03Decorator

- (void)operation {
    if (self.component) {
        [self.component operation];
    }
}

@end
