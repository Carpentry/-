//
//  DP06ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP06ViewController.h"
#import "TestPaperA.h"
#import "TestPaperB.h"

@interface DP06ViewController ()

@end

@implementation DP06ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestPaperA *a = [TestPaperA new];
    [a question1];
    [a question2];
    [a question3];
    
    TestPaperB *b = [TestPaperB new];
    [b question1];
    [b question2];
    [b question3];
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
