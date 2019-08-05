//
//  DP05OperationBase.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef DP05OperationBase_h
#define DP05OperationBase_h

@protocol DP05OperationBase <NSObject>

@property (nonatomic, assign) CGFloat numA;
@property (nonatomic, assign) CGFloat numB;

- (CGFloat)getResult;

@end

#endif /* DP05OperationBase_h */
