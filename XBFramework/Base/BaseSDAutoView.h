//
//  BaseView.h
//  XBFramework
//
//  Created by zoenet on 2017/2/15.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewProtocol.h"

@interface BaseSDAutoView : UIView<BaseViewProtocol>

//重写
-(void)xb_addElements;
-(void)xb_autoLayout;
//依情况而定是否要重写。比如两个输入框都有值时才可以点击按钮
-(void)xb_bindViewModel;
@end
