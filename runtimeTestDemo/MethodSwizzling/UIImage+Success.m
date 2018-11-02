//
//  UIImage+Success.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/2.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "UIImage+Success.h"
#import <objc/message.h>

@implementation UIImage (Success)

+ (void)load {
    // 获取到两个方法
    Method imageNameMethod = class_getClassMethod(self, @selector(imageNamed:));
    Method tuc_imageNamedMethod = class_getClassMethod(self, @selector(tuc_imageNamed:));
    
    // 交换方法
//    method_exchangeImplementations(imageNameMethod, tuc_imageNamedMethod);
}

+ (UIImage *)tuc_imageNamed:(NSString *)name {
    
    // 因为来到这里的时候实际上已经被交换过了
    // 这里要调用 imageName: 就需要调换被交换过的 tuc_imageName
    UIImage *image = [UIImage tuc_imageNamed:name];
    
    // 判断是否存在图片
    if (image) {
        NSLog(@"加载成功");
    }else{
        NSLog(@"加载失败");
    }
    return image;
}

@end
