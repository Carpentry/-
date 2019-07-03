//
//  DPViewCell.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DPViewCell.h"
#import "DPModel.h"

@implementation DPViewCell

- (void)setModel:(DPModel *)model {
    _model = model;
    self.textLabel.text = model.title;
    self.detailTextLabel.text = model.detail;
}

@end
