//
//  DPForeignerCenter.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DPForeignerCenter.h"

@implementation DPForeignerCenter
- (void)attack {
    NSLog(@"%@进攻",self.name);
}
- (void)defense {
    NSLog(@"%@防守",self.name);
}
@end
