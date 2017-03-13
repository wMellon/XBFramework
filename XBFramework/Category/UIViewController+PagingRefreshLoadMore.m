//
//  UIViewController+RefreshLoadMore.m
//  HealthyCity
//
//  Created by zoenet on 2017/3/2.
//  Copyright © 2017年 智业互联网络科技有限公司 艾嘉健康. All rights reserved.
//

#import "UIViewController+PagingRefreshLoadMore.h"
#import "MJRefresh.h"

//宏定义
#define prlmTableD [self prlmTablView]
#define prlmPageSizeD [self prlmPageSize]
#define prlmPageBeginD [self prlmPageBegin]
#define prlmPageIndexD [self prlmPageIndex]

@implementation UIViewController (PagingRefreshLoadMore)

-(void)setPRLMTableView:(UITableView*)tableView
               pageSize:(NSInteger)size
              pageBegin:(NSInteger)index{
    [self setPRLMTableView:tableView];
    [self setPRLMPageSize:size];
    [self setPRLMPageBegin:index];
    [self setPRLMPageIndex:index];
    
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
    [self setPRLMPageIndex:prlmPageBeginD];
    [self loadViewDataByPageIndex:[NSString stringWithFormat:@"%ld", (long)prlmPageBeginD] block:^(NSInteger count) {
        [prlmTableD.mj_header endRefreshing];
        [prlmTableD.mj_footer resetNoMoreData];
        if(count < prlmPageSizeD){
            [prlmTableD.mj_footer endRefreshingWithNoMoreData];
        }
    }];
}

-(void)rlm_loadMoreDataSource{
    [self setPRLMPageIndex:prlmPageIndexD + 1];
    [self loadViewDataByPageIndex:[NSString stringWithFormat:@"%ld", (long)prlmPageIndexD] block:^(NSInteger count) {
        if(count < prlmPageSizeD){
            //没有更多数据了
            [prlmTableD.mj_footer endRefreshingWithNoMoreData];
        }else{
            [prlmTableD.mj_footer endRefreshing];
        }
    }];
}

-(void)loadViewDataByPageIndex:(NSString*)pageIndex block:(void(^)(NSInteger count))block{}

#pragma mark - properties

-(void)setPRLMTableView:(UITableView*)tableView{
    objc_setAssociatedObject(self, @selector(prlmTablView), tableView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(UITableView*)prlmTablView{
    return objc_getAssociatedObject(self, _cmd);
}

-(void)setPRLMPageSize:(NSInteger)pageSize{
    objc_setAssociatedObject(self, @selector(prlmPageSize), @(pageSize), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSInteger)prlmPageSize{;
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

-(void)setPRLMPageBegin:(NSInteger)pageBegin{
    objc_setAssociatedObject(self, @selector(prlmPageBegin), @(pageBegin), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSInteger)prlmPageBegin{
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

-(void)setPRLMPageIndex:(NSInteger)pageIndex{
    objc_setAssociatedObject(self, @selector(prlmPageIndex), @(pageIndex), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSInteger)prlmPageIndex{
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

@end
