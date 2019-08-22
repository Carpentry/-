//
//  DP19GeneralManager.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP19GeneralManager.h"

@implementation DP19GeneralManager
- (void)dealRequest:(DP19Request *)request {
    if (request.num <= 10) {
        NSLog(@"%@ 批准%zd天假期",self.name,request.num);
    } else {
        NSLog(@"%@ 拒绝%zd天假期",self.name,request.num);
    }
}
@end
