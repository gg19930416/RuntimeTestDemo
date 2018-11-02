//
//  NSObject+Property.h
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/2.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Property)
// @propertty 在分类中只会生成 getter / setter 方法
// 不会生成成员属性
@property NSString *name;
@end

NS_ASSUME_NONNULL_END
