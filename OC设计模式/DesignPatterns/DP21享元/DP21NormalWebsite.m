//
//  DP21NormalWebsite.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/26.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP21NormalWebsite.h"

@implementation DP21NormalWebsite
- (void)useWithUser:(DP21User *)user {
    [super useWithUser:user];
    NSLog(@"%@ 网页展示",user.name);
}
@end
