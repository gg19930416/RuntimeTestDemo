//
//  MakeModelViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "MakeModelViewController.h"
#import "NSDate+Model.h"
#import "GithubUser.h"

@interface MakeModelViewController ()

@end

@implementation MakeModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 从网络请求数据
    NSString *githubApi = @"https://api.github.com/users/Tuccuay";
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:githubApi]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:nil];
        
        // 因为 GitHub 的 API中有一个字段是 id
        // 而 id 在 Objective-C 中已经被占用
        // GitHubUser *tuccuay = [GithubUser modelWithDictL:dict];
        
        // 所以把 id 替换恒 ID
        GithubUser *tuccuay = [GithubUser modelWithDict:@{@"ID":@"id"} upDateDict:dict];
        
        // 给下面的 NSLog 打个断点
        // 从测试器里面能看见上面的 tuccuay 模型已经转好了
        NSLog(@"啊哈哈哈或或或或 = %@",tuccuay);
    }];
    
    [task resume];
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
