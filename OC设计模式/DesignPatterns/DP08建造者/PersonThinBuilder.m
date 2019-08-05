//
//  PersonThinBuilder.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "PersonThinBuilder.h"

@implementation PersonThinBuilder
- (void)buildArm {
    NSLog(@"建造瘦子的胳膊");

}

- (void)buildLeg {
    NSLog(@"建造瘦子的腿");

}

- (void)buildBody {
    NSLog(@"建造瘦子的身体");

}

- (void)buildHead {
    NSLog(@"建造瘦子的头部");

}

- (void)buildPerson {
    [self buildHead];
    [self buildBody];
    [self buildArm];
    [self buildLeg];
}
@end
