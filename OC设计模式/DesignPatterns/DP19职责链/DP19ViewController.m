//
//  DP19ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP19ViewController.h"
#import "DP19BaseManager.h"
#import "DP19CommonManager.h"
#import "DP19MajorManager.h"
#import "DP19GeneralManager.h"

@interface DP19ViewController ()

@end

@implementation DP19ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP19CommonManager *common = [[DP19CommonManager alloc] initWithName:@"经理"];
    DP19MajorManager *major = [[DP19MajorManager alloc] initWithName:@"总监"];
    DP19GeneralManager *general = [[DP19GeneralManager alloc] initWithName:@"总经理"];
    common.suporier = major;
    major.suporier = general;
    
    DP19Request *req = [DP19Request new];
    req.requestType = RequestTypeForLeave;
    req.num = 1;
    [common dealRequest:req];
    
    req.num = 5;
    [common dealRequest:req];
    
    req.num = 8;
    [common dealRequest:req];
    
    req.num = 12;
    [common dealRequest:req];
}


@end
