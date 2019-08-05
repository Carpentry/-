//
//  PersonFatBuilder.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "PersonFatBuilder.h"

@implementation PersonFatBuilder

- (void)buildArm {
    NSLog(@"建造胖子的胳膊");
    
}

- (void)buildLeg {
    NSLog(@"建造胖子的腿");
    
}

- (void)buildBody {
    NSLog(@"建造胖子的身体");
    
}

- (void)buildHead {
    NSLog(@"建造胖子的头部");
    
}

- (void)buildPerson {
    [self buildHead];
    [self buildBody];
    [self buildArm];
    [self buildLeg];
}
@end
