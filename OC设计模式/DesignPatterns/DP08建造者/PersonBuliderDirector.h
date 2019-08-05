//
//  PersonBuliderDirector.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersonBuliderDirector : NSObject
- (void)creatPerson:(PersonBuilder)builder;
@end

NS_ASSUME_NONNULL_END
