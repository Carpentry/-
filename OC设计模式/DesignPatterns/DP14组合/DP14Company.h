//
//  DP14Company.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DP14Company <NSObject>
- (void)add:(id<DP14Company>)company;
- (void)remove:(id<DP14Company>)company;
- (void)display;
- (void)lineofDuty;
@end
