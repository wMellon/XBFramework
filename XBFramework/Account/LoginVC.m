//
//  LoginVC.m
//  XBFramework
//
//  Created by zoenet on 2017/2/23.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)xb_setup{
    self.title = @"登录";
}
-(void)xb_bindViewModel{
    //登录后，需要把GlobalClass的accountModel设置到内存，保存到db
}
-(void)xb_loadViewData{
    
}

@end
