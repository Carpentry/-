//
//  DP01ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/3.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP01ViewController.h"
#import "DP01Factory.h"
#import "DP01Caculate.h"

@interface DP01ViewController ()
@property (nonatomic, strong) UITextField *numberA;
@property (nonatomic, strong) UITextField *countTextField;
@property (nonatomic, strong) UITextField *numberB;
@property (nonatomic, strong) UILabel *resultLabel;
@property (nonatomic, strong) UIButton *sureBtn;


@end



@implementation DP01ViewController
static CGFloat margin = 50;
static CGFloat height = 35;

/**
 会自动生成实现的协议的属性对应的成员变量
 @synthesize numberA = _numberA;
 
 协议声明出来的是方法，虽然看起来是属性，其实只有 getter、setter 这两个方法，内部是没有实例变量的，并且你不能去重定义它，只能在 getter、setter 里处理
//@protocol HCDCalculate <NSObject>
//
//@property(nonatomic)CGFloat numberA;
//@property(nonatomic)CGFloat numberB;
//
//-(CGFloat)calculate;
//@end
 

工厂返回的是协议
 @implementation HCDCalcuteFactory
 +(id<HCDCalculate>)createCalcute:(NSString *)calculatetype{
 
 NSArray *calculateArray = @[@"+",@"-",@"*",@"/"];
 CalculateType calType = [calculateArray indexOfObject:calculatetype];
 
 
 switch (calType) {
 case calcuteTypeAdd:
 return [[HCDCalculateAdd alloc]init];
 break;
 case calcuteTypeMinus:
 return [[HCDCalculateMinus alloc]init];
 break;
 case calcuteTypdeMultipy:
 return [[HCDCalcuteMultiply alloc]init];
 case calcuteTypeDivide:
 return [[HCDCalculateDivide alloc]init];
 }
 }
 @end

 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.numberA];
    [self.view addSubview:self.countTextField];
    [self.view addSubview:self.numberB];
    [self.view addSubview:self.resultLabel];
    [self.view addSubview:self.sureBtn];
    [self.numberA mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.countTextField.mas_left).mas_offset(-margin);
        make.centerY.mas_equalTo(self.countTextField.mas_centerY);
        make.left.mas_equalTo(0).offset(margin);
        make.height.mas_equalTo(height);
    }];
    [self.countTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.height.mas_equalTo(height);
        make.width.mas_equalTo(height);
    }];
    [self.numberB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.countTextField.mas_right).mas_offset(margin);
        make.centerY.mas_equalTo(self.countTextField.mas_centerY);
        make.right.mas_equalTo(0).offset(-margin);
        make.height.mas_equalTo(height);
    }];
    [self.sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.numberA.mas_left);
        make.right.mas_equalTo(self.numberB.mas_right);
        make.bottom.mas_equalTo(self.countTextField.mas_top).mas_offset(-margin);
        make.height.mas_equalTo(height);
    }];
    [self.resultLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.numberA.mas_left);
        make.right.mas_equalTo(self.numberB.mas_right);
        make.bottom.mas_equalTo(self.sureBtn.mas_top).mas_offset(-margin);
        make.height.mas_equalTo(height);
    }];
    
}

- (UITextField *)numberA {
    if (!_numberA) {
        UITextField *textField = [[UITextField alloc] init];
        textField.keyboardType = UIKeyboardTypeNumberPad;
        textField.borderStyle = UITextBorderStyleRoundedRect;
        _numberA = textField;
    }
    return _numberA;
}

- (UITextField *)countTextField {
    if (!_countTextField) {
        UITextField *textField = [[UITextField alloc] init];
        textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
        textField.borderStyle = UITextBorderStyleRoundedRect;
        _countTextField = textField;
    }
    return _countTextField;
}

- (UITextField *)numberB {
    if (!_numberB) {
        UITextField *textField = [[UITextField alloc] init];
        textField.keyboardType = UIKeyboardTypeNumberPad;
        textField.borderStyle = UITextBorderStyleRoundedRect;
        _numberB = textField;
    }
    return _numberB;
}

- (UILabel *)resultLabel {
    if(!_resultLabel) {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"--";
        label.textAlignment = NSTextAlignmentCenter;
        _resultLabel = label;
    }
    return _resultLabel;
}

- (UIButton *)sureBtn {
    if (!_sureBtn) {
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureBtn setTitle:@"确认计算" forState:UIControlStateNormal];
        _sureBtn.backgroundColor = [UIColor lightGrayColor];
        [_sureBtn addTarget:self action:@selector(sureBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureBtn;
}

- (void)sureBtnClicked:(UIButton *)button {
    id<DP01Caculate> cacu = [DP01Factory createCalcute:self.countTextField.text];
    cacu.numberA = [self.numberA.text floatValue];
    cacu.numberB = [self.numberB.text floatValue];
    self.resultLabel.text = [[NSNumber numberWithFloat:[cacu caculate]] stringValue];
    self.numberA.text = @"";
    self.numberB.text = @"";
    self.countTextField.text = @"";
}


@end
