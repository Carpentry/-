//
//  DP11ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP11ViewController.h"
#import "DP11Work.h"
#import "DP11NoonState.h"
@interface DP11ViewController ()

@end

@implementation DP11ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    DP11Work *work = [DP11Work new];
    work.hour = 10;
    [work writeProgram];
    work.state = [DP11NoonState new];
    [work writeProgram];
    work.hour = 15;
    [work writeProgram];
    work.hour = 18;
    [work writeProgram];
//    work.isFinished = YES;
    work.hour = 22;
    [work writeProgram];
}


@end
