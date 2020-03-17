//
//  MeHeadTableViewCell.h
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface MeHeadTableViewCell : BaseTableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *headPic;

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
@end

NS_ASSUME_NONNULL_END
