//
//  ResolveInstanceMethodCat.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/2.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "ResolveInstanceMethodCat.h"
#import <objc/message.h>

@implementation ResolveInstanceMethodCat

// 具体的实现 (方法的内部都默认包含两个参数Class类和SEL方法,被称为隐式参数。)
void run(id self,SEL _cmd, NSNumber *metre) {
    NSLog(@"跑了%@米",metre);
}

// 当调用了一个未实现的方法来到这里
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == NSSelectorFromString(@"run:")) {
        // 动态添加 run : 方法
        // 第一个参数表示Class cls 类型:
        // 第二个参数表示待调用的方法名称:
        // 第三个参数(IMP)run,IMP一个函数指针,这里表示指定具体实现方法 run:
        // 第四个参数表方法的参数, 0代表没有参数 :
        class_addMethod(self, @selector(run:), run, "v@:@");
        
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

//- (void)run:(NSNumber *)metre {
//    NSLog(@"跑了%@米",metre);
//
//}

@end
