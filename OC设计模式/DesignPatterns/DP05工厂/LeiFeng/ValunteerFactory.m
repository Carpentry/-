//
//  ValunteerFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "ValunteerFactory.h"
#import "Valunteer.h"

@implementation ValunteerFactory
- (id<LeiFengProtocol>)creatLeiFengFactory {
    return [Valunteer new];
}
@end
