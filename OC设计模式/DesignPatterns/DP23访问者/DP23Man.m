//
//  DP23Man.m
//  DesignPatterns
//
//  Created by 小李 on 2019/9/2.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP23Man.h"

@implementation DP23Man
- (void)accept:(DP23Action *)visitor {
    [visitor getManConclusion:self];
}
@end
