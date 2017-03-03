//
//  BaseViewController.h
//  XBFramework
//
//  Created by zoenet on 2017/2/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewControllerProtocol.h"

@interface BaseViewController : UIViewController<BaseViewControllerProtocol>

//back和left不要混用，不然位置不一样。项目统一使用left
@property (nonatomic, strong) UIBarButtonItem *leftButtonItem;

//需要子类重写的方法
-(void)xb_setup;
-(void)xb_bindViewModel;
-(void)xb_loadViewData;

@end
