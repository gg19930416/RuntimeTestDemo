//
//  ArchiveCat.h
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/2.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArchiveCat : NSObject
@property (nonatomic,copy) NSString *name;

- (NSArray *)ignoredNames;

- (instancetype)initWithCoder:(NSCoder *)aDecoder;

- (void)encodeWithCoder:(NSCoder *)aCoder;
@end

NS_ASSUME_NONNULL_END
