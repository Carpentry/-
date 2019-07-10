//
//  DP04Pursuit.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/10.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP04Base.h"


NS_ASSUME_NONNULL_BEGIN
@class DP04Girl;
@interface DP04Pursuit : NSObject<DP04Base>
- (instancetype)initWithGirl:(DP04Girl *)girl;
@end

NS_ASSUME_NONNULL_END
