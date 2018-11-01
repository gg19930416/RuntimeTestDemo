//
//  Cat.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/1.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (void)eat {
    NSLog(@"嘤嘤嘤");
}

- (void)run:(NSUInteger)metre {
    NSLog(@"跑了 %ld 米",metre);
}

@end
