//
//  MeHeadTableViewCell.m
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import "MeHeadTableViewCell.h"
#import "MeSub.h"
@implementation MeHeadTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setupUI:(MeSub *)model{
    self.headPic.layer.cornerRadius = 5;
    self.headPic.layer.masksToBounds = YES;
    NSLog(@"头像内容正在初始化");
}

@end
