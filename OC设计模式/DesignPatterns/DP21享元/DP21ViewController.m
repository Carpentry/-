//
//  DP21ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP21ViewController.h"
#import "DP21WebsiteFactory.h"
#import "DP21BlogWebsite.h"
#import "DP21NormalWebsite.h"
#import "DP21User.h"
#import "DP21Website.h"

@interface DP21ViewController ()

@end

@implementation DP21ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP21WebsiteFactory *fa = [[DP21WebsiteFactory alloc] init];

    DP21Website *web = [fa createWebsiteWithType:DP21WebTypeNormal];
    [web useWithUser:[[DP21User alloc] initWithName:@"1"]];
    
    DP21Website *blog = [fa createWebsiteWithType:DP21WebTypeBlog];
    [blog useWithUser:[[DP21User alloc] initWithName:@"2"]];
    
    [web useWithUser:[[DP21User alloc] initWithName:@"3"]];

    [web useWithUser:[[DP21User alloc] initWithName:@"4"]];

    [blog useWithUser:[[DP21User alloc] initWithName:@"5"]];

    NSLog(@"%zd个对象",[fa getNumberofInstance]);
}


@end
