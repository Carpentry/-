//
//  DP01Caculate.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef DP01Caculate_h
#define DP01Caculate_h

@protocol DP01Caculate <NSObject>
@property (nonatomic, assign) CGFloat numberA;
@property (nonatomic, assign) CGFloat numberB;

- (CGFloat)caculate;

@end

#endif /* DP01Caculate_h */
