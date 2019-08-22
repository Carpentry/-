//
//  DP20ConcreteMediator.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP20ConcreteMediator.h"
#import "DP20ConcreteColleague.h"
#import "DP20ConcreteColleague1.h"

@implementation DP20ConcreteMediator
- (void)send:(NSString *)message colleague:(DP20Colleague *)colleague {
    if (colleague == self.colleague) {
        [self.colleague1 receive:message];
    } else {
        [self.colleague receive:message];
    }
}
@end
