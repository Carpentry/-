//
//  DP20ConcreteColleague.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP20ConcreteColleague.h"

@implementation DP20ConcreteColleague
- (void)send:(NSString *)message {
    NSLog(@"同事1发送了信息");
    [self.mediator send:message colleague:self];
}

- (void)receive:(NSString *)message {
    NSLog(@"%@%@",@"同事1得到消息", message);

}
@end
