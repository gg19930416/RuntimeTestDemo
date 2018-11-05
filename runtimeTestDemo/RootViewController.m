//
//  RootViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "RootViewController.h"
#import "RootTableView.h"

@interface RootViewController ()<RootTableViewDelegate>
@property (nonatomic,strong) RootTableView *rootView;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.view = self.rootView;
    self.navigationItem.title = @"Runtime 测试demo";
}

#pragma mark - 懒加载
- (RootTableView *)rootView {
    if (!_rootView) {
        _rootView = [[RootTableView alloc] initWithFrame:self.view.bounds];
        _rootView.rootDelegate = self;
    }
    return _rootView;
}

#pragma mark - RootTableViewDelegate
- (void)didSelectedTableViewRowDidlick:(NSIndexPath *)indexPath pushVC:(NSString *)vc{
    UIViewController *viewConttroller = [self stringChangeToClass:vc];
    if (vc) {
        viewConttroller.navigationItem.title = vc;
        [self.navigationController pushViewController:viewConttroller animated:YES];
    }
}

- (UIViewController *)stringChangeToClass:(NSString *)str {
    id vc = [[NSClassFromString(str) alloc] init];
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }
    return nil;
}

@end
