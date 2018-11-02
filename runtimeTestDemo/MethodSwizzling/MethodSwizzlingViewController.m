//
//  MethodSwizzlingViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "MethodSwizzlingViewController.h"
#import "UIImage+Success.h"

@interface MethodSwizzlingViewController ()

@end

@implementation MethodSwizzlingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
   
    // 这里调用的是 imageNamed
    // 但实际上方法已经在 UIImage+Success 分类中被交换了
    // 所以这个能够提示图片是否加载成功
    NSURL *url = [NSURL URLWithString:@"http://t2.hddhhn.com/uploads/tu/201810/9999/446f4aa2a6.jpg"];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];

    // 因为名为 picture 的图片不存在,所以输出是
    // 2018-11-02 17:05:30.610805+0800 runtimeTestDemo[58467:2264936] 加载失败
    
    UIImageView *backgroundImageViw = [[UIImageView alloc] initWithImage:image];
    backgroundImageViw.frame = CGRectMake(0, 64, self.view.bounds.size.width,self.view.bounds.size.height);
    backgroundImageViw.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:backgroundImageViw];
    
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
