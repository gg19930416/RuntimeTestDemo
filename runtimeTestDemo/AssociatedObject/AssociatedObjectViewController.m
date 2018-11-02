//
//  AssociatedObjectViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "AssociatedObjectViewController.h"
#import "NSObject+Property.h"

@interface AssociatedObjectViewController ()

@end

@implementation AssociatedObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    NSObject *anObject = [[NSObject alloc] init];
    anObject.name = @"Alton";

    // NSObject 并没有 name 这个属性, 通过 Runtime 成功添加了这个属性
    NSLog(@"%@",anObject.name);
    // Do any additional setup after loading the view.
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
