//
//  ArchiveCat.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/2.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "ArchiveCat.h"
#import "NSObject+Archive.h"

@implementation ArchiveCat

- (NSArray *)ignoredNames {
    return @[];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        [self gg_initWithCoder:aDecoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self gg_encodeWithCoder:aCoder];
}

@end
