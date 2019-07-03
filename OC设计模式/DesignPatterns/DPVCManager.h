//
//  DPVCManager.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPVCManager : NSObject
@property (nonatomic, strong) UIViewController *currentVC;
- (void)enterVCAtIndexPath:(NSIndexPath *)indexPath;
@end

NS_ASSUME_NONNULL_END
