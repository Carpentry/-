//
//  DP10User.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DP10SQLUser.h"

@protocol DP10User <NSObject>
- (void)insertUser:(DP10SQLUser *)user;
- (DP10SQLUser *)getUser;
@end



