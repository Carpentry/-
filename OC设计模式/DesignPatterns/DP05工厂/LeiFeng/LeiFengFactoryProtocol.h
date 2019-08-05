
//
//  LeiFengFactoryProtocol.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef LeiFengFactoryProtocol_h
#define LeiFengFactoryProtocol_h

#import "LeiFengProtocol.h"

@protocol LeiFengFactoryProtocol <NSObject>

- (id<LeiFengProtocol>)creatLeiFengFactory;

@end

#endif /* LeiFengFactoryProtocol_h */
