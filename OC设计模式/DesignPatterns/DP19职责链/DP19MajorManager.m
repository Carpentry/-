//
//  DP19MajorManager.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP19MajorManager.h"

@implementation DP19MajorManager
- (void)dealRequest:(DP19Request *)request {
    if (request.num <= 7) {
        NSLog(@"%@ 批准%zd天假期",self.name,request.num);
    } else {
        [self.suporier dealRequest:request];
    }
}
@end
