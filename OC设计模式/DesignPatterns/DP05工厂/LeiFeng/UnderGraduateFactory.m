//
//  UnderGraduateFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "UnderGraduateFactory.h"
#import "UnderGraduate.h"

@implementation UnderGraduateFactory
- (id<LeiFengProtocol>)creatLeiFengFactory {
    return [UnderGraduate new];
}
@end
