//
//  DP02ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/4.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP02ViewController.h"
#import "DP02CashFactory.h"
#import "DP02Context.h"

@interface DP02ViewController ()
@property (nonatomic, strong) UITextField *unitPriceTextField;
@property (nonatomic, strong) UITextField *countTextField;
@property (nonatomic, strong) UITextField *stragetyTextField;
@property (nonatomic, strong) UITextField *totalPriceTextField;
@property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) UIButton *resetButton;

@end

@implementation DP02ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI {
    [self.view addSubview:self.unitPriceTextField];
    [self.view addSubview:self.countTextField];
    [self.view addSubview:self.stragetyTextField];
    [self.view addSubview:self.totalPriceTextField];
    [self.view addSubview:self.confirmButton];
    [self.view addSubview:self.resetButton];
    [self.totalPriceTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(kMargin);
        make.right.mas_equalTo(-kMargin);
        make.top.mas_equalTo(self.view.mas_safeAreaLayoutGuideTop).mas_offset(kMargin);
        make.height.mas_equalTo(kHeight);
    }];
    [self.unitPriceTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.totalPriceTextField.mas_left);
        make.right.mas_equalTo(self.totalPriceTextField.mas_right);
        make.top.mas_equalTo(self.totalPriceTextField.mas_bottom).offset(kMargin);
        make.height.mas_equalTo(kHeight);
    }];
    [self.countTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.totalPriceTextField.mas_left);
        make.right.mas_equalTo(self.totalPriceTextField.mas_right);
        make.top.mas_equalTo(self.unitPriceTextField.mas_bottom).offset(kMargin);
        make.height.mas_equalTo(kHeight);
    }];
    [self.stragetyTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.totalPriceTextField.mas_left);
        make.right.mas_equalTo(self.totalPriceTextField.mas_right);
        make.top.mas_equalTo(self.countTextField.mas_bottom).offset(kMargin);
        make.height.mas_equalTo(kHeight);
    }];
    [self.confirmButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.totalPriceTextField.mas_left);
        make.width.mas_equalTo(2*kHeight);
        make.bottom.mas_equalTo(self.totalPriceTextField.mas_top).offset(-15);
        make.height.mas_equalTo(30);
    }];
    [self.resetButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.totalPriceTextField.mas_right);
        make.width.mas_equalTo(2*kHeight);
        make.bottom.mas_equalTo(self.totalPriceTextField.mas_top).offset(-15);
        make.height.mas_equalTo(30);
    }];
}

- (UITextField *)retTextField:(NSString *)title {
    UITextField *textField = [[UITextField alloc] init];
    textField.leftViewMode = UITextFieldViewModeAlways;
    UILabel *label = [[UILabel alloc] init];
    label.text = title;
    textField.leftView = label;
    [label sizeToFit];
    return textField;
}

- (UIButton *)retButton:(NSString *)title {
    UIButton *button =  [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}

- (UITextField *)unitPriceTextField {
    if (!_unitPriceTextField) {
        _unitPriceTextField = [self retTextField:@"单价"];
    }
    return _unitPriceTextField;
}

- (UITextField *)countTextField {
    if (!_countTextField) {
        _countTextField = [self retTextField:@"数量"];
    }
    return _countTextField;
}

- (UITextField *)stragetyTextField {
    if (!_stragetyTextField) {
        _stragetyTextField = [self retTextField:@"促销"];
    }
    return _stragetyTextField;
}

- (UITextField *)totalPriceTextField {
    if (!_totalPriceTextField) {
        _totalPriceTextField = [self retTextField:@"总价"];
        _totalPriceTextField.enabled = NO;
    }
    return _totalPriceTextField;
}

- (UIButton *)confirmButton {
    if (!_confirmButton) {
        _confirmButton = [self retButton:@"确认"];
        [_confirmButton addTarget:self action:@selector(confirmButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _confirmButton;
}

- (UIButton *)resetButton {
    if (!_resetButton) {
        _resetButton = [self retButton:@"重置"];
        [_resetButton addTarget:self action:@selector(resetButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _resetButton;
}

- (void)confirmButtonClicked:(UIButton *)button {
    
    DP02Context *context = [[DP02Context alloc] initWithCashType:CashTypeNormal];
    NSLog(@"normal:%f",[context getResult:([self.countTextField.text floatValue]*[self.unitPriceTextField.text floatValue])]);
    
    DP02Context *context1 = [[DP02Context alloc] initWithCashType:CashTypeRebate];
    NSLog(@"rebate:%f",[context1 getResult:([self.countTextField.text floatValue]*[self.unitPriceTextField.text floatValue])]);

    
    DP02Context *context2 = [[DP02Context alloc] initWithCashType:CashTypeReturn];
    NSLog(@"return:%f",[context2 getResult:([self.countTextField.text floatValue]*[self.unitPriceTextField.text floatValue])]);

    
    
    
    id<DP02CashBase> cash = [DP02CashFactory createCashFactory:self.stragetyTextField.text];
//    self.totalPriceTextField.text = [[NSNumber numberWithFloat:[cash acceptCash:([self.countTextField.text floatValue]*[self.unitPriceTextField.text floatValue])]] stringValue];
}

- (void)resetButtonClicked:(UIButton *)button {
    self.totalPriceTextField.text = @"";
    self.stragetyTextField.text = @"";
    self.countTextField.text = @"";
    self.unitPriceTextField.text = @"";
}

@end
