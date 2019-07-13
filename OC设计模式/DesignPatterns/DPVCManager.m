
//
//  DPVCManager.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DPVCManager.h"
#import "DP01ViewController.h"
#import "DP02ViewController.h"
#import "DP03ViewController.h"
#import "DP04ViewController.h"
#import "DP05ViewController.h"
#import "DP24ViewController.h"
#import "DP06ViewController.h"
#import "DP07ViewController.h"
#import "DP08ViewController.h"



@implementation DPVCManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)enterVCAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc;
    switch (indexPath.row) {
        case 0:
            vc = [[DP01ViewController alloc] init];
            break;
        case 1:
            vc = [[DP02ViewController alloc] init];
            break;
        case 2:
            vc = [[DP03ViewController alloc] init];
            break;
        case 3:
            vc = [[DP04ViewController alloc] init];
            break;
        case 4:
            vc = [[DP05ViewController alloc] init];
            break;
        case 5:
            vc = [[DP24ViewController alloc] init];
            break;
        case 6:
            vc = [[DP06ViewController alloc] init];
            break;
        case 7:
            vc = [[DP07ViewController alloc] init];
            break;
        case 8:
            vc = [[DP08ViewController alloc] init];
            break;
        default:
            break;
    }
    [self.currentVC presentViewController:vc animated:YES completion:nil];
}
@end
