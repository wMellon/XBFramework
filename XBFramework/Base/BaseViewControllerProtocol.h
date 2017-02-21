//
//  BaseViewController.h
//  XBFramework
//
//  Created by zoenet on 2017/2/15.
//  Copyright © 2017年 xxb. All rights reserved.
//

@protocol BaseViewControllerProtocol <NSObject>

/**
 页面设置，包含title，navigationBar设置
 属性初始化
 */
-(void)xb_setup;

/**
 加载页面的数据
 */
-(void)xb_loadViewData;

/**
 绑定
 */
-(void)xb_bindViewModel;

@end
