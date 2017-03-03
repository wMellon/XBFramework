//
//  LoginView.m
//  XBFramework
//
//  Created by zoenet on 2017/2/23.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "LoginView.h"

@interface LoginView()

@property (nonatomic, strong) UITextField *loginNoTF;
@property (nonatomic, strong) UITextField *passwordTF;


@end

@implementation LoginView

-(void)xb_addElements{
    _loginNoTF = [[UITextField alloc] init];
    _loginNoTF.placeholder = @"请输入账号";
    _loginNoTF.font = FontSize(13);
    
    _passwordTF = [[UITextField alloc] init];
    _passwordTF.placeholder = @"请输入密码";
    _passwordTF.font = FontSize(13);
    
    _loginBtn = [[UIButton alloc] init];
//    _loginBtn setTitle:<#(nullable NSString *)#> forState:UIControlStateSelected
    [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
}
-(void)xb_autoLayout{
    _loginNoTF.sd_layout
    .topSpaceToView(self, 15)
    .leftSpaceToView(self, 15)
    .rightSpaceToView(self, 15)
    .heightIs(_loginNoTF.font.lineHeight);
    
    _passwordTF.sd_layout
    .topSpaceToView(_loginNoTF, 15)
    .leftSpaceToView(self, 15)
    .rightSpaceToView(self, 15)
    .heightIs(_passwordTF.font.lineHeight);
    
    _loginBtn.sd_layout
    .topSpaceToView(_passwordTF, 30)
    .leftSpaceToView(self, 15)
    .rightSpaceToView(self, 15)
    .heightIs(44);
}

-(void)xb_bindViewModel{
    XBWeakSelfDefine
    [[RACSignal combineLatest:@[_passwordTF.rac_textSignal, _loginNoTF.rac_textSignal] reduce:^id(NSString *loginNo,NSString *password){
        return @(loginNo.length > 0 && password.length > 0);
    }] subscribeNext:^(id x) {
        XBWeakSelf.loginBtn.enabled = [x boolValue];
    }];
}
@end
