//
//  NSObject+Archive.h
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/2.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Archive)

- (NSArray *)ignoredProperty;

- (void)gg_encodeWithCoder:(NSCoder *)aCoder;

- (void)gg_initWithCoder:(NSCoder *)aDecoder;

@end

NS_ASSUME_NONNULL_END
