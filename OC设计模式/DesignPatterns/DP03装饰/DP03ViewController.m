
//
//  DP03ViewController.m
//  DesignPatterns
//
//  Created by 李岳龙 on 2019/7/7.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP03ViewController.h"
#import "DP03ConcreteComponent.h"
#import "DP03ConcreteDecorator.h"
#import "DP03ConcreteDecoratorB.h"

#import "DP03Person.h"
#import "DP03Tshirts.h"
#import "DP03BigTrouser.h"
#import "DP03Sneakers.h"
#import "DP03LeatherShoes.h"

@interface DP03ViewController ()

@end

@implementation DP03ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DP03ConcreteComponent *component = [DP03ConcreteComponent new];
    DP03ConcreteDecorator *decoratorA = [DP03ConcreteDecorator new];
    DP03ConcreteDecoratorB *decoratorB = [DP03ConcreteDecoratorB new];

    decoratorA.component = component;
    decoratorB.component = component;
    
    [decoratorA operation];
    [decoratorB operation];
    
    DP03Person *person = [DP03Person new];
    DP03Tshirts *tshirts = [DP03Tshirts new];
    DP03BigTrouser *bigTrouser = [DP03BigTrouser new];
    DP03Sneakers *sneakers = [DP03Sneakers new];
    DP03LeatherShoes *leatherShoes = [DP03LeatherShoes new];
    
    tshirts.component = person;
    bigTrouser.component = tshirts;
    sneakers.component = bigTrouser;
    leatherShoes.component = sneakers;
    [leatherShoes show];
    
    
}



@end
