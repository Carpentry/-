//
//  DP19Request.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, RequestType) {
    RequestTypeForLeave,
};

@interface DP19Request : NSObject
@property (nonatomic, assign) RequestType requestType;
@property (nonatomic, assign) NSUInteger num;
@end

NS_ASSUME_NONNULL_END
