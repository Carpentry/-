//
//  DP01Factory.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP01Caculate.h"


NS_ASSUME_NONNULL_BEGIN

@interface DP01Factory : NSObject
+ (id<DP01Caculate>)createCalcute:(NSString *)catype;
@end

NS_ASSUME_NONNULL_END
