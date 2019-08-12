//
//  DP12Center.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP12Center.h"
#import "DPForeignerCenter.h"
@interface DP12Center ()
@property (nonatomic, strong) DPForeignerCenter *foreignerCenter;

@end

@implementation DP12Center
@synthesize name = _name;

- (void)attack {
    NSLog(@"%@ center attack",self.name);
}
- (void)defense {
    NSLog(@"%@ center defense",self.name);
}
@end
