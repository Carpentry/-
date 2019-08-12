//
//  DP10ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP10ViewController.h"
#import "DP10Factory.h"
#import "DP10AccessFactory.h"
#import "DP10SqlServerFactory.h"
#import "DP10SqlServerUser.h"
#import "DP10SqlServerDepartment.h"
#import "DP10AccessUser.h"
#import "DP10AccessDepartment.h"
#import "DP10SQLUser.h"
#import "DP10SQLDepartment.h"
@interface DP10ViewController ()

@end

@implementation DP10ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    id<DP10Factory> factory = [[DP10SqlServerFactory alloc] init];
    DP10SqlServerUser *sqlUser =  [factory createUser];
    DP10SqlServerDepartment *sqlDepartment = [factory createDepartment];
    
    [sqlUser insertUser:[DP10SQLUser new]];
    [sqlUser getUser];
    [sqlDepartment insertDepartment:[DP10SQLDepartment new]];
    [sqlDepartment getDepartment];
    
    id<DP10Factory> factory2 = [DP10AccessFactory new];
    DP10AccessUser *accessUser = [factory2 createUser];
    DP10AccessDepartment *accessDepartment = [factory2 createDepartment];
    
    [accessUser insertUser:[DP10SQLUser new]];
    [accessUser getUser];
    [accessDepartment insertDepartment:[DP10SQLDepartment new]];
    [accessDepartment getDepartment];
    
}


@end
