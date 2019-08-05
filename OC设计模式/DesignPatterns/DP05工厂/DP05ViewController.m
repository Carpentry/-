//
//  DP05ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/12.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP05ViewController.h"
#import "DP05OperationFactoryBase.h"
#import "DP05OperatonAddFactory.h"
#import "DP05OperationAdd.h"
#import "LeiFengProtocol.h"
#import "UnderGraduate.h"
#import "ValunteerFactory.h"
#import "LeiFengFactoryProtocol.h"
#import "Valunteer.h"


@interface DP05ViewController ()

@end

@implementation DP05ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    id<DP05OperationFactoryBase> operationFactory = [DP05OperatonAddFactory new];
    DP05OperationAdd *add = [operationFactory createOperation];
    add.numA = 5;
    add.numB = 8;
    NSLog(@"%f",[add getResult]);
    
    id<LeiFengProtocol> leifeng = [UnderGraduate new];
    [leifeng buyRice];
    [leifeng sweep];
    [leifeng wash];
    
 
    id <LeiFengFactoryProtocol> factoryProtocol = [ValunteerFactory new];
    Valunteer *vf = [factoryProtocol creatLeiFengFactory];
    [vf buyRice];
    [vf sweep];
    [vf wash];
}


@end
