//
//  DPForeignerCenter.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPForeignerCenter : NSObject
@property (nonatomic, copy) NSString *name;
- (void)attack;
- (void)defense;
@end

NS_ASSUME_NONNULL_END
