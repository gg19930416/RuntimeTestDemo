//
//  GithubUser.h
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/2.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+Model.h"

NS_ASSUME_NONNULL_BEGIN

@interface GithubUser : NSObject
@property (nonatomic, strong) NSString *location;

@property (nonatomic, assign) NSNumber *public_gists;

@property (nonatomic, strong) NSString *url;

@property (nonatomic, strong) NSString *following_url;

@property (nonatomic, strong) NSString *events_url;

@property (nonatomic, strong) NSString *received_events_url;

@property (nonatomic, strong) NSString *company;

@property (nonatomic, strong) NSString *updated_at;

@property (nonatomic, strong) NSString *avatar_url;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *type;

@property (nonatomic, strong) NSString *subscriptions_url;

@property (nonatomic, strong) NSString *gists_url;

@property (nonatomic, assign) NSNumber *ID;

@property (nonatomic, strong) NSString *starred_url;

@property (nonatomic, strong) NSString *organizations_url;

@property (nonatomic, strong) NSString *repos_url;

@property (nonatomic, assign) BOOL site_admin;

@property (nonatomic, strong) NSString *email;

@property (nonatomic, strong) NSString *login;

@property (nonatomic, strong) NSString *blog;

@property (nonatomic, assign) NSNumber *public_repos;

@property (nonatomic, assign) NSNumber *followers;

@property (nonatomic, assign) NSNumber *following;

@property (nonatomic, strong) NSString *created_at;

@property (nonatomic, strong) NSString *gravatar_id;

@property (nonatomic, strong) NSString *followers_url;

@property (nonatomic, strong) NSString *html_url;

@end

NS_ASSUME_NONNULL_END
