//
//  DP21BlogWebsite.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/26.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP21BlogWebsite.h"

@implementation DP21BlogWebsite

- (void)useWithUser:(DP21User *)user {
    [super useWithUser:user];
    NSLog(@"%@博客",user.name);

}
@end
