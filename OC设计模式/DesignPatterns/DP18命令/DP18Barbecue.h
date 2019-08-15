//
//  DP18Barbecue.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/15.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP18Cooker.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP18Barbecue : NSObject
@property (nonatomic, strong) DP18Cooker *cooker;
- (instancetype)initWithCooker:(DP18Cooker *)cooker;
- (void)barbecueAction;
@end

NS_ASSUME_NONNULL_END
