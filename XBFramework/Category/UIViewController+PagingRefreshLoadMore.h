//
//  UIViewController+RefreshLoadMore.h
//  HealthyCity
//
//  Created by zoenet on 2017/3/2.
//  Copyright © 2017年 智业互联网络科技有限公司 艾嘉健康. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PagingRefreshLoadMore)

/**
 需要使用时，调用这个方法传入参数，再重写底下的方法就行

 @param tableView tableView
 @param size size
 @param index 开始的索引
 */
-(void)setPRLMTableView:(UITableView*)tableView
               pageSize:(NSInteger)size
              pageBegin:(NSInteger)index;
/**
 重写该方法

 @param pageIndex 返回当前的页码，字符型
 @param block 获取到数据执行这个回调，结束动态效果
 */
-(void)loadViewDataByPageIndex:(NSString*)pageIndex block:(void(^)(NSInteger count))block;

@end
