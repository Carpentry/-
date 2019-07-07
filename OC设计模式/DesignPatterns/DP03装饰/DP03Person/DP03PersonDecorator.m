//
//  DP03PersonDecorator.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/7.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP03PersonDecorator.h"

@implementation DP03PersonDecorator
- (void)show {
    if (self.component) {
        [self.component show];
    }
}
@end
