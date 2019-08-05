//
//  ViewController.m
//  DesignPatterns
//
//  Created by 小李 on 2019/6/20.
//  Copyright © 2019 小李. All rights reserved.
//

#import "ViewController.h"
#import "DPViewCell.h"
#import "DPModel.h"
#import "DPVCManager.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) DPVCManager *vcManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(0);
    }];
    [self addData];
}

- (void)addData {
    DPModel *model = [[DPModel alloc] init];
    model.title = @"简单工厂";
    [self.dataArray addObject:model];
    DPModel *model1 = [[DPModel alloc] init];
    model1.title = @"策略";
    [self.dataArray addObject:model1];
    DPModel *model2 = [[DPModel alloc] init];
    model2.title = @"装饰";
    [self.dataArray addObject:model2];
    DPModel *model3 = [[DPModel alloc] init];
    model3.title = @"代理";
    [self.dataArray addObject:model3];
    DPModel *model4 = [[DPModel alloc] init];
    model4.title = @"工厂";
    [self.dataArray addObject:model4];
    DPModel *model5 = [[DPModel alloc] init];
    model5.title = @"原型";
    [self.dataArray addObject:model5];
    DPModel *model6 = [[DPModel alloc] init];
    model6.title = @"模板";
    [self.dataArray addObject:model6];
    DPModel *model7 = [[DPModel alloc] init];
    model7.title = @"外观";
    [self.dataArray addObject:model7];
    DPModel *model8 = [[DPModel alloc] init];
    model8.title = @"建造者";
    [self.dataArray addObject:model8];
    DPModel *model9 = [[DPModel alloc] init];
    model9.title = @"观察者";
    [self.dataArray addObject:model9];
    DPModel *model10 = [[DPModel alloc] init];
    model10.title = @"抽象工厂";
    [self.dataArray addObject:model10];
    DPModel *model11 = [[DPModel alloc] init];
    model11.title = @"状态";
    [self.dataArray addObject:model11];
    DPModel *model12 = [[DPModel alloc] init];
    model12.title = @"适配器";
    [self.dataArray addObject:model12];
    DPModel *model13 = [[DPModel alloc] init];
    model13.title = @"备忘录";
    [self.dataArray addObject:model13];
    DPModel *model14 = [[DPModel alloc] init];
    model14.title = @"组合";
    [self.dataArray addObject:model14];
    DPModel *model15 = [[DPModel alloc] init];
    model15.title = @"迭代器";
    [self.dataArray addObject:model15];
    DPModel *model16 = [[DPModel alloc] init];
    model16.title = @"单例";
    [self.dataArray addObject:model16];
    DPModel *model17 = [[DPModel alloc] init];
    model17.title = @"桥接";
    [self.dataArray addObject:model17];
    DPModel *model18 = [[DPModel alloc] init];
    model18.title = @"命令";
    [self.dataArray addObject:model18];
    DPModel *model19 = [[DPModel alloc] init];
    model19.title = @"职责链";
    [self.dataArray addObject:model19];
    DPModel *model20 = [[DPModel alloc] init];
    model20.title = @"中介者";
    [self.dataArray addObject:model20];
    DPModel *model21 = [[DPModel alloc] init];
    model21.title = @"享元";
    [self.dataArray addObject:model21];
    DPModel *model22 = [[DPModel alloc] init];
    model22.title = @"解释器";
    [self.dataArray addObject:model22];
    DPModel *model23 = [[DPModel alloc] init];
    model23.title = @"访问者";
    [self.dataArray addObject:model23];
    [self.tableView reloadData];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
    }
    return _tableView;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

- (DPVCManager *)vcManager {
    if (!_vcManager) {
        _vcManager = [[DPVCManager alloc] init];
        _vcManager.currentVC = self;
    }
    return _vcManager;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseStr = @"reuseCell";
    DPViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseStr];
    if (!cell) {
        cell = [[DPViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseStr];
    }
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.vcManager enterVCAtIndexPath:indexPath];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}
@end
