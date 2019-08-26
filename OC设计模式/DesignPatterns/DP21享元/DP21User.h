//
//  DP21User.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/26.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DP21User : NSObject
@property (nonatomic, copy) NSString* name;
- (instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
