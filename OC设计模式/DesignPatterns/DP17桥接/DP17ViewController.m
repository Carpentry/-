//
//  DP17ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP17ViewController.h"
#import "DP17PhoneM.h"
#import "DP17PhoneN.h"
#import "DP17Contact.h"
#import "DP17Game.h"

@interface DP17ViewController ()

@end

@implementation DP17ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP17PhoneM *m = [DP17PhoneM new];
    m.software = [DP17Contact new];
    [m run];
    
    DP17PhoneN *n = [DP17PhoneN new];
    n.software = [DP17Game new];
    [n run];
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
