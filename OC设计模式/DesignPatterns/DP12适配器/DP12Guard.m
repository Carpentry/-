//
//  DP12Guard.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP12Guard.h"

@implementation DP12Guard
@synthesize name = _name;

- (void)attack {
    NSLog(@"%@ guard attack",self.name);
}
- (void)defense {
    NSLog(@"%@ guard defense",self.name);
}
@end
