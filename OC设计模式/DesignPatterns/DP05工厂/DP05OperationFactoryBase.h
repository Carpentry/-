
//
//  DP05OperationFactoryBase.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef DP05OperationFactoryBase_h
#define DP05OperationFactoryBase_h
#import "DP05OperationBase.h"

@protocol DP05OperationFactoryBase <NSObject>

- (id<DP05OperationBase>)createOperation;

@end

#endif /* DP05OperationFactoryBase_h */
