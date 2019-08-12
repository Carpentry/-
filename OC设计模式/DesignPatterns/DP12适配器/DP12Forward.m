//
//  DP12Forward.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP12Forward.h"

@implementation DP12Forward
@synthesize name = _name;
- (void)attack {
    NSLog(@"%@ Forward attack",self.name);
}
- (void)defense {
    NSLog(@"%@ Forward defense",self.name);
}
@end
