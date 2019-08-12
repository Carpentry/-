//
//  DP14ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP14ViewController.h"
#import "DP14Company.h"
#import "DP14HRDepartment.h"
#import "DP14ConcreteCompany.h"
#import "DP14FinanceDepartment.h"


@interface DP14ViewController ()

@end

@implementation DP14ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP14ConcreteCompany *root = [[DP14ConcreteCompany alloc] initWithName:@"总公司"];
    [root add:[[DP14HRDepartment alloc] initWithName:@"总公司人资"]];
    [root add:[[DP14FinanceDepartment alloc] initWithName:@"总公司财务"]];

    DP14ConcreteCompany *comp = [[DP14ConcreteCompany alloc] initWithName:@"上海分公司"];
    [comp add:[[DP14HRDepartment alloc] initWithName:@"上海分公司人资"]];
    [comp add:[[DP14FinanceDepartment alloc] initWithName:@"上海分公司财务"]];
    [root add:comp];
    
    DP14ConcreteCompany *comp1 = [[DP14ConcreteCompany alloc] initWithName:@"天津分公司"];
    [comp1 add:[[DP14HRDepartment alloc] initWithName:@"天津分公司人资"]];
    [comp1 add:[[DP14FinanceDepartment alloc] initWithName:@"天津分公司财务"]];
    [root add:comp1];
    
    [root display];
    
    [root lineofDuty];
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
