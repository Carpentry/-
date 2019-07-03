
//
//  DP01Factory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP01Factory.h"
#import "DP01Add.h"
#import "DP01Minus.h"
#import "DP01Multiply.h"
#import "DP01Divide.h"
#import "DP01Tool.h"

@implementation DP01Factory

+ (id<DP01Caculate>)createCalcute:(NSString *)catype {
    NSArray *caculateTypeArray = @[@"+",@"-",@"*",@"/"];
    DPCaculateType type =  [caculateTypeArray indexOfObject:catype];
    switch (type) {
        case DPCaculateTypeAdd:
            return [[DP01Add alloc] init];
        case DPCaculateTypeMinus:
            return [[DP01Minus alloc] init];
        case DPCaculateTypeMultiply:
            return [[DP01Multiply alloc] init];
        case DPCaculateTypeDivide:
            return [[DP01Divide alloc] init];
    }
    
}

@end
