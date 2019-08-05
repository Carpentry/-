//
//  DP09ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP09ViewController.h"
#import "DP09StockObserver.h"
#import "DP09NBAObserver.h"
#import "DP09SecreteSubject.h"
#import "DP09Observer.h"

@interface DP09ViewController ()

@end

@implementation DP09ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    id<DP09Observer> observerStock = [[DP09StockObserver alloc] init];
    id<DP09Observer> observerNBA  = [[DP09NBAObserver alloc] init];
    id<DP09Observer> observerNBA1 = [[DP09NBAObserver alloc] init];
    
    DP09SecreteSubject *subject = [[DP09SecreteSubject alloc] init];
    [subject attach:observerStock];
    [subject attach:observerNBA];
    [subject attach:observerNBA1];
    
    [subject detach:observerNBA1];
    
    [subject notify];
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
