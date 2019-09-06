//
//  DP23ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP23ViewController.h"
#import "DP23ObjectStructure.h"
#import "DP23Man.h"
#import "DP23Woman.h"
#import "DP23Success.h"
#import "DP23Failed.h"
#import "DP23Amativeness.h"

@interface DP23ViewController ()

@end

@implementation DP23ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    DP23ObjectStructure *stru = [[DP23ObjectStructure alloc] init];
    [stru add:[[DP23Woman alloc] init]];
    [stru add:[[DP23Man alloc] init]];
    
    [stru display:[[DP23Success alloc] init]];
    [stru display:[[DP23Failed alloc] init]];
    [stru display:[[DP23Amativeness alloc] init]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
