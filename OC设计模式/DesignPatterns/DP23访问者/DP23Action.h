//
//  DP23Action.h
//  DesignPatterns
//
//  Created by 小李 on 2019/9/2.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DP23Man;
@class DP23Woman;
@interface DP23Action : NSObject
- (void)getManConclusion:(DP23Man *)man;
- (void)getWomanConclusion:(DP23Woman *)woman;

@end

NS_ASSUME_NONNULL_END
