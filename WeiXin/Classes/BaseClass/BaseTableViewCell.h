//
//  BaseTableViewCell.h
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableViewCell : UITableViewCell

@property(nonatomic, strong) id model;

- (void) setupUI: (id) model;
@end

NS_ASSUME_NONNULL_END
