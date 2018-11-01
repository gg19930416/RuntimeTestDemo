//
//  RootTableView.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/1.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "RootTableView.h"

@interface RootTableView() <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong,readwrite) NSMutableArray *dataArray;
@property (nonatomic,strong,readwrite) NSMutableArray <NSString *>*vcArray;
@end

static NSString *cellID = @"Cell";

@implementation RootTableView

- (instancetype)initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        [self addSubview:self.tableView];
    }
    return self;
}

#pragma mark - 懒加载
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.bounds style:(UITableViewStylePlain)];
        _tableView.backgroundColor = [UIColor redColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] initWithArray:@[@"消息机制介绍 / messaging",@"方法交换 / methodSwizzling",@"动态加载方法 / ResolveInstanceMethod",@"消息转发 / ForwardMessage",@"动态关联属性 / AssociatedObjective",@"字典转模型 / MakeModel",@"对象归档、解档"]];
    }
    return _dataArray;
}

- (NSMutableArray *)vcArray {
    if (!_vcArray) {
        _vcArray = [[NSMutableArray alloc] initWithArray:@[@"MessageingViewController",@"MethodSwizzlingViewController",@"ResolveInstanceMethodViewController",@"ForwardMessageViewController",@"AssociatedObjectViewController",@"MakeModelViewController",@"ObjectArchiveViewController"]];
    }
    return _vcArray;
}

#pragma mark - UITableViewDelegate && UITableViewDataSource

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
    // 获取重用池中的cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
   // 如果没有渠道,就初始化
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:cellID];
    }
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([_rootDelegate respondsToSelector:@selector(didSelectedTableViewRowDidlick:pushVC:)]) {
        [_rootDelegate didSelectedTableViewRowDidlick:indexPath pushVC:self.vcArray[indexPath.row]];
    }
}

@end
