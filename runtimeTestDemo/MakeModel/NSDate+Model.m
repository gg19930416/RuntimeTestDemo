//
//  NSDate+Model.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/1.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "NSDate+Model.h"

#import <objc/message.h>

@implementation NSObject (Model)

+ (instancetype)modelWithDict:(NSDictionary *)dict updateDict:(NSDictionary *)updateDict {
    id model = [[self alloc] init];
    // 遍历模型中属性
    unsigned int conunt = 0;
    Ivar *ivars = class_copyIvarList(self, &conunt);
    for (int i = 0; i < conunt; i++) {
        Ivar ivar = ivars[i];
        // 属性名称
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        ivarName = [ivarName substringFromIndex:1];
        id value = dict[ivarName];
        // 模型中属性名对应字典中的key
        if (value == nil) {
            if (updateDict) {
                NSString *keyName = updateDict[ivarName];
                value = dict[keyName];
            }
        }
        [model setValue:value forKey:ivarName];
    }
    return model;
}

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    return [self modelWithDict:dict updateDict:nil];
}

@end
