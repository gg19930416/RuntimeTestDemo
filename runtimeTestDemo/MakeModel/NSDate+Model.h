//
//  NSDate+Model.h
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/1.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Model)

+ (instancetype)modelWithDict:(NSDictionary *)dict;
+ (instancetype)modelWithDict:(NSDictionary *)dict upDateDict:(NSDictionary *)updateDict;

@end

NS_ASSUME_NONNULL_END
