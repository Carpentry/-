//
//  DP04ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/10.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP04ViewController.h"
#import "DP04Proxy.h"
#import "DP04Girl.h"

@interface DP04ViewController ()

@end

@implementation DP04ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP04Girl *girl = [[DP04Girl alloc] init];
    girl.name = @"ciz";
    DP04Proxy *proxy = [[DP04Proxy alloc] initWithGirl:girl];
    [proxy flowers];
    [proxy gift];
    [proxy chocolate];
}


@end
