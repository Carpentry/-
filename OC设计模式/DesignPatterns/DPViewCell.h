//
//  DPViewCell.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DPModel;
NS_ASSUME_NONNULL_BEGIN

@interface DPViewCell : UITableViewCell
@property (nonatomic, strong) DPModel *model;

@end

NS_ASSUME_NONNULL_END
