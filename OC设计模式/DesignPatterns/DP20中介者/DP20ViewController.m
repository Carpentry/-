//
//  DP20ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP20ViewController.h"
#import "DP20ConcreteColleague1.h"
#import "DP20ConcreteColleague.h"
#import "DP20ConcreteMediator.h"

@interface DP20ViewController ()

@end

@implementation DP20ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP20ConcreteMediator *mediator = [[DP20ConcreteMediator alloc] init];

    DP20ConcreteColleague *colleague = [[DP20ConcreteColleague alloc] initWithMediator:mediator];
    DP20ConcreteColleague1 *colleague1 = [[DP20ConcreteColleague1 alloc] initWithMediator:mediator];
    
    mediator.colleague = colleague1;
    mediator.colleague1 = colleague;
    
    [colleague send:@"111111"];
    [colleague1 send:@"22222"];
    
}



@end
