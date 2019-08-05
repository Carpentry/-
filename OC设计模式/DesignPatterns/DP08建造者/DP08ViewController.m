//
//  DP08ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP08ViewController.h"
#import "PersonBuilder.h"
#import "PersonFatBuilder.h"
#import "PersonThinBuilder.h"
#import "PersonBuliderDirector.h"

@interface DP08ViewController ()

@end

@implementation DP08ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PersonFatBuilder *fat = [PersonFatBuilder new];
    PersonBuliderDirector *dic = [PersonBuliderDirector new];
    [dic creatPerson:fat];
    
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
