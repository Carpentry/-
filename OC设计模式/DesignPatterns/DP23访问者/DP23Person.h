//
//  DP23Person.h
//  DesignPatterns
//
//  Created by 小李 on 2019/9/2.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP23Action.h"

NS_ASSUME_NONNULL_BEGIN
@interface DP23Person : NSObject
- (void)accept:(DP23Action *)visitor;

@end

NS_ASSUME_NONNULL_END
