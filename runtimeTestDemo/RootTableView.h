//
//  RootTableView.h
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/11/1.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol RootTableViewDelegate <NSObject>

@optional
- (void)didSelectedTableViewRowDidlick:(NSIndexPath *)indexPath pushVC:(NSString *)vc;
@end

@interface RootTableView : UITableView

@property (nonatomic,weak) id<RootTableViewDelegate>rootDelegate;
@end

NS_ASSUME_NONNULL_END
