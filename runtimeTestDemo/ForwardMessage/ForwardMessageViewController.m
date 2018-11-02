//
//  ForwardMessageViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "ForwardMessageViewController.h"
#import "ForwardCat.h"

@interface ForwardMessageViewController ()

@end

@implementation ForwardMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *instanceBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    instanceBtn.backgroundColor = [UIColor blueColor];
    [instanceBtn setTitle:@"实例方法" forState:(UIControlStateNormal)];
    [instanceBtn addTarget:self action:@selector(instanceBtnDidclicked:) forControlEvents:(UIControlEventTouchUpInside)];
    instanceBtn.frame = CGRectMake(100, 150, 100, 40);
    [self.view addSubview:instanceBtn];
    
    UIButton *categoryBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    categoryBtn.backgroundColor = [UIColor blueColor];
    [categoryBtn setTitle:@"类方法" forState:(UIControlStateNormal)];
    [categoryBtn addTarget:self action:@selector(categoryBtnBtnDidclicked:) forControlEvents:(UIControlEventTouchUpInside)];
    categoryBtn.frame = CGRectMake(100, CGRectGetMaxY(instanceBtn.frame) + 50, 100, 40);
    [self.view addSubview:categoryBtn];

    
    
    
    // Do any additional setup after loading the view.
}

- (IBAction)instanceBtnDidclicked:(UIButton *)sender {
    [[ForwardCat new] stoke];
}

- (IBAction)categoryBtnBtnDidclicked:(UIButton *)sender {
    [ForwardCat stoke];
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
