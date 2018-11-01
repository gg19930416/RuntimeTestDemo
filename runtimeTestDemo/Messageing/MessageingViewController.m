//
//  MessageingViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//  Messageing 消息机制介绍

#import "MessageingViewController.h"
#import "Cat.h"
#import <objc/message.h>

@interface MessageingViewController ()

@end

@implementation MessageingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建一个对象
    // Cat *carlan = [[Cat alloc] init];
    
    // 使用 Runtime 创建一个对象
    // 根据类名获取到类
    Class catClass = objc_getClass("Cat");
    
    // 通过类创建实例对象
    // 如果这里报错, 请将 Build Setting -> Enable Strict Checking of objc_msgsend Calls 改为 NO
    Cat *harlan = objc_msgSend(catClass, @selector(alloc));
    
    // 初始化对象
    // harlan = [harlan init];
    
    // 通过 Runtime 初始化对象
    harlan = objc_msgSend(harlan, @selector(init));
    
    // 调用对象方法
    // [harlan eat];

    // 通过 Runtime 调用对象方法
    // 通过的这个方法没有声明只有实现所以这里会有警告
    // 但是发送消息的时候会从方法列表里寻找方法
    // 所以这个能够成功执行
    objc_msgSend(harlan, @selector(eat));
    
    // 输出 : 2018-11-01 17:40:01.581116+0800 runtimeTestDemo[48526:1974305] 嘤嘤嘤
    
    // 当然, objc_megSend 可以传递参数
    Cat *alex = objc_msgSend(objc_msgSend(objc_getClass("Cat"), sel_registerName("alloc")), sel_registerName("init"));
    objc_msgSend(alex, @selector(run:),10);
 
    
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
