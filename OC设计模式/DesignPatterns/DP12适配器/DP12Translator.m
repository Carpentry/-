//
//  DP12Translator.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP12Translator.h"
#import "DPForeignerCenter.h"

@interface DP12Translator()
@property (nonatomic, strong) DPForeignerCenter *foreignerCenter;

@end

@implementation DP12Translator
@synthesize name = _name;
- (void)attack {
    [self.foreignerCenter attack];
}

- (void)defense {
    [self.foreignerCenter attack];
}

- (DPForeignerCenter *)foreignerCenter {
    if (!_foreignerCenter) {
        _foreignerCenter = [[DPForeignerCenter alloc] init];
        _foreignerCenter.name = self.name;
    }
    return _foreignerCenter;
}
@end
