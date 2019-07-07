//
//  DP03ConcreteDecorator.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/7.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP03ConcreteDecorator.h"

@implementation DP03ConcreteDecorator
- (void)operation {
    [super operation];
    self.addedState = @"New state";
    NSLog(@"具体装饰对象A的操作");
}
@end
