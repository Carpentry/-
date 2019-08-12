//
//  DP11Work.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP11State.h"
NS_ASSUME_NONNULL_BEGIN

@interface DP11Work : NSObject
@property (nonatomic, strong) id<DP11State> state;
@property (nonatomic, assign) CGFloat hour;
@property (nonatomic, assign) BOOL isFinished;
- (void)writeProgram;
@end

NS_ASSUME_NONNULL_END
