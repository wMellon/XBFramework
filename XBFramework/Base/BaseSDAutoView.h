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
-(void)xb_bindViewModel;
@end
