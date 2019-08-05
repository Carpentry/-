
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
#import "DP09ViewController.h"
#import "DP10ViewController.h"
#import "DP11ViewController.h"
#import "DP12ViewController.h"
#import "DP13ViewController.h"
#import "DP14ViewController.h"
#import "DP15ViewController.h"
#import "DP16ViewController.h"
#import "DP17ViewController.h"
#import "DP18ViewController.h"
#import "DP19ViewController.h"
#import "DP20ViewController.h"
#import "DP21ViewController.h"
#import "DP22ViewController.h"
#import "DP23ViewController.h"

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
        case 9:
            vc = [[DP09ViewController alloc] init];
            break;
        case 10:
            vc = [[DP10ViewController alloc] init];
            break;
        case 11:
            vc = [[DP11ViewController alloc] init];
            break;
        case 12:
            vc = [[DP12ViewController alloc] init];
            break;
        case 13:
            vc = [[DP13ViewController alloc] init];
            break;
        case 14:
            vc = [[DP14ViewController alloc] init];
            break;
        case 15:
            vc = [[DP15ViewController alloc] init];
            break;
        case 16:
            vc = [[DP16ViewController alloc] init];
            break;
        case 17:
            vc = [[DP17ViewController alloc] init];
            break;
        case 18:
            vc = [[DP18ViewController alloc] init];
            break;
        case 19:
            vc = [[DP19ViewController alloc] init];
            break;
        case 20:
            vc = [[DP20ViewController alloc] init];
            break;
        case 21:
            vc = [[DP21ViewController alloc] init];
            break;
        case 22:
            vc = [[DP22ViewController alloc] init];
            break;
        case 23:
            vc = [[DP23ViewController alloc] init];
            break;
        default:
            break;
    }
    [self.currentVC presentViewController:vc animated:YES completion:nil];
}
@end
