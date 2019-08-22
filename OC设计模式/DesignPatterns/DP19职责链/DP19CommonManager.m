//
//  DP19CommonManager.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP19CommonManager.h"

@implementation DP19CommonManager
- (void)dealRequest:(DP19Request *)request {
    if (request.requestType == RequestTypeForLeave) {
        if (request.num <= 3) {
            NSLog(@"%@ 批准%zd天假期",self.name,request.num);
        } else {
            [self.suporier dealRequest:request];
        }
    }
}
@end
