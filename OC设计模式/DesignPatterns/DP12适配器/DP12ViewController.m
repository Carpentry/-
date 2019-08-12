//
//  DP12ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP12ViewController.h"
#import "DP12Player.h"
#import "DP12Forward.h"
#import "DP12Center.h"
#import "DP12Guard.h"
#import "DP12Translator.h"


typedef id<DP12Player> Player;
@interface DP12ViewController ()

@end

@implementation DP12ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    id<DP12Player> player = [DP12Forward new];
    player.name = @"lyl";
    [player attack];
    
    Player player1 = [DP12Translator new];
    player1.name = @"李";
    [player1 attack];
    
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
