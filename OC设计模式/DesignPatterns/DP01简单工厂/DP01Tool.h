//
//  DP01Tool.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,DPCaculateType) {
    DPCaculateTypeAdd = 0,
    DPCaculateTypeMinus,
    DPCaculateTypeMultiply,
    DPCaculateTypeDivide
};

@interface DP01Tool : NSObject

@end

NS_ASSUME_NONNULL_END
