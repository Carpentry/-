//
//  DP07ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP07ViewController.h"
#import "DP07Facade.h"

@interface DP07ViewController ()

@end

@implementation DP07ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    DP07Facade *facade = [DP07Facade new];
    [facade methodA];
    NSLog(@"============");
    [facade methodB];
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
