//
//  UIViewController+RefreshLoadMore.m
//  HealthyCity
//
//  Created by zoenet on 2017/3/2.
//  Copyright © 2017年 智业互联网络科技有限公司 艾嘉健康. All rights reserved.
//

#import "UIViewController+PagingRefreshLoadMore.h"
#import "MJRefresh.h"

static NSInteger pageSize;
static NSInteger pageBegin;
static NSInteger pageIndex;
static UITableView *prlm_tableView;
@implementation UIViewController (PagingRefreshLoadMore)

-(void)setPRLMTableView:(UITableView*)tableView
               pageSize:(NSInteger)size
              pageBegin:(NSInteger)index{
    prlm_tableView = tableView;
    pageSize = size;
    pageBegin = index;
    pageIndex = pageBegin;
    XBWeakSelfDefine
    tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        //下拉刷新
        [XBWeakSelf rlm_reloadViewData];
    }];
    tableView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        //上拉加载更多
        [XBWeakSelf rlm_loadMoreDataSource];
    }];
}

-(void)rlm_reloadViewData{
    pageIndex = pageBegin;
    [self loadViewDataByPageIndex:NSIntegerToString(pageBegin) block:^(NSInteger count) {
        [prlm_tableView.mj_header endRefreshing];
        [prlm_tableView.mj_footer resetNoMoreData];
        if(count < pageSize){
            [prlm_tableView.mj_footer endRefreshingWithNoMoreData];
        }
    }];
}

-(void)rlm_loadMoreDataSource{
    pageIndex ++;
    [self loadViewDataByPageIndex:NSIntegerToString(pageIndex) block:^(NSInteger count) {
        if(count < pageSize){
            //没有更多数据了
            [prlm_tableView.mj_footer endRefreshingWithNoMoreData];
        }else{
            [prlm_tableView.mj_footer endRefreshing];
        }
    }];
}

-(void)loadViewDataByPageIndex:(NSString*)pageIndex block:(void(^)(NSInteger count))block{}

@end
