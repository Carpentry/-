//
//  DP04Proxy.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/10.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DP04Girl;
@interface DP04Proxy : NSObject
- (instancetype)initWithGirl:(DP04Girl *)girl;

- (void)gift;
- (void)flowers;
- (void)chocolate;
@end

NS_ASSUME_NONNULL_END
