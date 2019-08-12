//
//  DP10AccessUser.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP10AccessUser.h"

@implementation DP10AccessUser
- (void)insertUser:(DP10SQLUser *)user {
    NSLog(@"Access insert user");
}

- (DP10SQLUser *)getUser {
    NSLog(@"Access get user");
    return nil;
}
@end
