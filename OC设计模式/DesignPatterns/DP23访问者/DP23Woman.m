//
//  DP23Woman.m
//  DesignPatterns
//
//  Created by 小李 on 2019/9/2.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP23Woman.h"

@implementation DP23Woman
- (void)accept:(DP23Action *)visitor {
    [visitor getWomanConclusion:self];
}
@end
