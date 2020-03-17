//
//  MeSubTableViewCell.m
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import "MeSubTableViewCell.h"
#import "MeSub.h"
@implementation MeSubTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    NSLog(@"init From Nib");
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
    self.image.image = [UIImage imageNamed:model.imageStr];
    self.title.text = model.title;
}

@end
