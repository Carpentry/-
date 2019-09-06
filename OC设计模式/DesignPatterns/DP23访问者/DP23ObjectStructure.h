//
//  DP23ObjectStructure.h
//  DesignPatterns
//
//  Created by 小李 on 2019/9/2.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP23Person.h"
#import "DP23Action.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP23ObjectStructure : NSObject

- (void)add:(DP23Person *)person;
- (void)remove:(DP23Person *)person;
- (void)display:(DP23Action *)action;

@end

NS_ASSUME_NONNULL_END
