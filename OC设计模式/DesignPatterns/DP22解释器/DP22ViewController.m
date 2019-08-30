//
//  DP22ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/5.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP22ViewController.h"
#import "DP22Context.h"
#import "DP22ScaleExpression.h"
#import "DP22NoteExpression.h"
#import "DP22Expression.h"

@interface DP22ViewController ()

@end

@implementation DP22ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DP22Context *context = [[DP22Context alloc] init];
    context.playText = @"O 2 E 0.5 G 0.5 A 3 E 0.5 G 0.5 D 3 E 0.5 G 0.5 A 0.5 o 3 C 1 O 2 A 0.5 G 1 C 0.5 E 0.5 D 3";
    DP22Expression *expression = nil;
    while (context.playText.length > 0) {
        NSString *str = [context.playText substringWithRange:NSMakeRange(0, 1)];
        DP22ExpressionType type = [self retType:str];
        switch (type) {
            case DP22ExpressionTypeO:{
                expression = [[DP22ScaleExpression alloc] init];
                break;
            };
            case DP22ExpressionTypeP:
            case DP22ExpressionTypeC:
            case DP22ExpressionTypeD:
            case DP22ExpressionTypeE:
            case DP22ExpressionTypeF:
            case DP22ExpressionTypeG:
            case DP22ExpressionTypeA:
            case DP22ExpressionTypeB:
            case DP22ExpressionTypeUnknown:{
                expression = [[DP22NoteExpression alloc] init];
                break;
            }
        }
        [expression interpretText:context];
    }
}

- (DP22ExpressionType)retType:(NSString *)str {
    if ([str isEqualToString:@"c"] || [str isEqualToString:@"C"]) {
        return DP22ExpressionTypeC;
    } else if ([str isEqualToString:@"d"] || [str isEqualToString:@"B"]) {
        return DP22ExpressionTypeD;
    } else if ([str isEqualToString:@"e"] || [str isEqualToString:@"D"]) {
        return DP22ExpressionTypeE;
    } else if ([str isEqualToString:@"f"] || [str isEqualToString:@"E"]) {
        return DP22ExpressionTypeF;
    } else if ([str isEqualToString:@"g"] || [str isEqualToString:@"F"]) {
        return DP22ExpressionTypeG;
    } else if ([str isEqualToString:@"a"] || [str isEqualToString:@"A"]) {
        return DP22ExpressionTypeA;
    } else if ([str isEqualToString:@"o"] || [str isEqualToString:@"O"]) {
        return DP22ExpressionTypeO;
    } else if ([str isEqualToString:@"p"] || [str isEqualToString:@"P"]) {
        return DP22ExpressionTypeP;
    } else if ([str isEqualToString:@"b"] || [str isEqualToString:@"B"]) {
        return DP22ExpressionTypeB;
    } else {
        return DP22ExpressionTypeUnknown;
    }
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
