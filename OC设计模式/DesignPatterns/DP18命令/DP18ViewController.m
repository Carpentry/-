//
//  DP18ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP18ViewController.h"
#import "DP18Cooker.h"
#import "DP18RoastedWings.h"
#import "DP18Kabob.h"
#import "DP18Waiter.h"
#import "DP18Barbecue.h"

@interface DP18ViewController ()

@end

@implementation DP18ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP18Cooker *cooker = [[DP18Cooker alloc] init];
    DP18Barbecue *kabob = [[DP18Kabob alloc] initWithCooker:cooker];
    DP18Barbecue *wings = [[DP18RoastedWings alloc] initWithCooker:cooker];
    
    DP18Waiter *waiter = [[DP18Waiter alloc] init];
    [waiter addOrder:kabob];
    [waiter addOrder:wings];
    [waiter notify];

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
