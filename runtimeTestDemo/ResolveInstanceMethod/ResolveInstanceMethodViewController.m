//
//  ResolveInstanceMethodViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "ResolveInstanceMethodViewController.h"
#import "ResolveInstanceMethodCat.h"

@interface ResolveInstanceMethodViewController ()

@end

@implementation ResolveInstanceMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ResolveInstanceMethodCat *billy = [[ResolveInstanceMethodCat alloc] init];
    
    // 这个时候 billy 对象并没有 run: 方法
    // 所以会进入 + (BooL)resolveClassMethod:(SEL)sel 处理
    // 然后方法被动态添加
    [billy performSelector:@selector(run:) withObject:@10];
    
    // Do any additional setup after loading the view.
}

@end
