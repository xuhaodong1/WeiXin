//
//  MeTableViewController.m
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import "MeTableViewController.h"
#import "MeSub.h"
#import "MeSubTableViewCell.h"
#import "MeHeadTableViewCell.h"
#import "BaseTableViewCell.h"
#import "GlobalDefines.h"
@interface MeTableViewController ()



@end

@implementation MeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    [self initData];
    [self.tableView registerNib:[UINib nibWithNibName:@"MeHeadTableViewCell" bundle:nil] forCellReuseIdentifier:@"MeHeadTableViewCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"MeSubTableViewCell" bundle:nil] forCellReuseIdentifier:@"MeSubTableViewCell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *arr = self.dataArray[section];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *headTableIndentifier = @"MeHeadTableViewCell";
    static NSString *subTableIndentifier = @"MeSubTableViewCell";
    static NSString *currentTableIndentifier;
    BaseTableViewCell *cell;
    NSArray *sectionArr = self.dataArray[indexPath.section];
    
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"MeHeadTableViewCell"];
    }else{
        cell = [tableView dequeueReusableCellWithIdentifier:@"MeSubTableViewCell"];
    }
    [cell setupUI: sectionArr[indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 120;
    }
    return 55;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = Global_backgroundColor;
    return view;
}




#pragma mark - setupUI

-(void) setupUI{
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 65, 0, 0);
//    self.tableView.backgroundColor = Global_backgroundColor;
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
}

#pragma mark - initData
-(void) initData{
    NSArray *section1 = @[[
                        [MeSub alloc] initWithTitle:@"养乐多" imageStr:@"Me" path:@"" number:@"a1349292929" type:PathTypeToNormalView]
    ];
    NSArray *section2 = @[[
                        [MeSub alloc] initWithTitle:@"支付" imageStr:@"ff_IconShowAlbum" path:@"" number:@"" type:PathTypeToNormalView],
                          [[MeSub alloc] initWithTitle:@"收藏" imageStr:@"MoreMyFavorites" path:@"" number:@"" type:PathTypeToNormalView],
                          [[MeSub alloc] initWithTitle:@"钱包" imageStr:@"MoreMyBankCard" path:@"" number:@"" type:PathTypeToNormalView],
                          [[MeSub alloc] initWithTitle:@"卡包" imageStr:@"MyCardPackageIcon" path:@"" number:@"" type:PathTypeToNormalView]
    ];
    NSArray *section3 = @[[
                        [MeSub alloc] initWithTitle:@"表情" imageStr:@"MoreExpressionShops" path:@"" number:@"" type:PathTypeToNormalView]
    ];
    NSArray *section4 = @[[
                        [MeSub alloc] initWithTitle:@"设置" imageStr:@"MoreSetting" path:@"" number:@"a1349292929" type:PathTypeToNormalView]
    ];
    [self.dataArray addObject:section1];
    [self.dataArray addObject:section2];
    [self.dataArray addObject:section3];
    [self.dataArray addObject:section4];
}

@end
