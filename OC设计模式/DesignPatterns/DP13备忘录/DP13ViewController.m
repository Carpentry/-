//
//  DP13ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP13ViewController.h"
#import "DP13GameRoll.h"
#import "DP13GameState.h"
#import "DP13StateManager.h"

@interface DP13ViewController ()

@end

@implementation DP13ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    DP13GameRoll *roll = [DP13GameRoll new];
    [roll getState];
    DP13GameState *state = [roll saveState];
    DP13StateManager *manager =  [[DP13StateManager alloc] initWithGameState:state];
    [roll fightBoss];
    [roll getState];
    
    [roll rebackState:manager.state];
    [roll getState];
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
