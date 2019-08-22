//
//  DP19BaseManager.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/22.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP19Request.h"

NS_ASSUME_NONNULL_BEGIN
@interface DP19BaseManager : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) DP19BaseManager *suporier;

- (instancetype)initWithName:(NSString *)name;
- (void)dealRequest:(DP19Request *)request;
@end

NS_ASSUME_NONNULL_END
