//
//  UserInfoVC.m
//  XBFramework
//
//  Created by zoenet on 2017/2/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "UserInfoVC.h"
#import "UserinfoView.h"
#import "UserinfoViewModel.h"
#import "UIViewController+PagingRefreshLoadMore.h"

@interface UserInfoVC ()<UITableViewDataSource>

@property(nonatomic, strong) UserinfoView *userinfoView;
@property(nonatomic, strong) UserinfoViewModel *userinoViewModel;

@end

static NSString *defaultCellID = @"DefaultCellID";
@implementation UserInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)xb_setup{
    self.title = @"个人信息";
    self.userinfoView = [[UserinfoView alloc] initWithFrame:self.view.bounds];
    self.userinfoView.tableView.dataSource = self;
    [self.userinfoView.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:defaultCellID];
    self.view = self.userinfoView;
    self.userinoViewModel = [[UserinfoViewModel alloc] init];
    self.userinfoView.userinoViewModel = self.userinoViewModel;
    [self.userinfoView setNeedsLayout];
    [self.userinfoView layoutIfNeeded];
    [self setPRLMTableView:self.userinfoView.tableView pageSize:3 pageBegin:1];
}

-(void)xb_bindViewModel{
    XBWeakSelfDefine
    [self.userinoViewModel.refreshUISubject subscribeNext:^(id x) {
        [XBWeakSelf.userinfoView.tableView reloadData];
    }];
}

-(void)xb_loadViewData{
    //这个数据加载放在哪一层？
    [self.userinoViewModel loadViewData];
}

#pragma mark - tableview


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.userinoViewModel.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:defaultCellID];
    id object = self.userinoViewModel.dataSource[indexPath.row];
    if([object isKindOfClass:[NSMutableAttributedString class]]){
        cell.textLabel.attributedText = object;
    }else{
        cell.textLabel.text = object;
    }
    return cell;
}

-(void)loadViewDataByPageIndex:(NSString*)pageIndex block:(void(^)(NSInteger count))block{
    [self.userinoViewModel.refreshUISubject sendNext:nil];
    block(2);
}
@end
