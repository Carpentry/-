//
//  DP11State.h
//  DesignPatterns
//
//  Created by 小李 on 2019/8/12.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef DP11State_h
#define DP11State_h
@class DP11Work;
@protocol DP11State <NSObject>
- (void)writeProgram:(DP11Work *)work;

@end

#endif /* DP11State_h */
