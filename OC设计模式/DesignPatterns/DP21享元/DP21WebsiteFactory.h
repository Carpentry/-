//
//  DP21WebsiteFactory.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/26.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP21Website.h"
#import "DP21User.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, DP21WebType) {
    DP21WebTypeBlog,
    DP21WebTypeNormal
};

@interface DP21WebsiteFactory : NSObject
- (DP21Website *)createWebsiteWithType:(DP21WebType)type;
- (NSUInteger)getNumberofInstance;

@end

NS_ASSUME_NONNULL_END
