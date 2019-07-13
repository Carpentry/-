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
