//
//  DP17PhoneBrand.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/13.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef DP17PhoneBrand_h
#define DP17PhoneBrand_h

#import "DP17PhoneSoftware.h"

@protocol DP17PhoneBrand <NSObject>

@property (nonatomic, strong) id<DP17PhoneSoftware> software;

- (void)run;

@end
#endif /* DP17PhoneBrand_h */
