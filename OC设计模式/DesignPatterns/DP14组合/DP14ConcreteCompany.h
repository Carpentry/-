//
//  DP14ConcreteCompany.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP14Company.h"

NS_ASSUME_NONNULL_BEGIN

@interface DP14ConcreteCompany : NSObject<DP14Company>
@property(nonatomic,copy)NSString *name;
-(instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
