//
//  LoginVC.m
//  XBFramework
//
//  Created by zoenet on 2017/2/23.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "LoginVC.h"
#import "LoginView.h"

@interface LoginVC ()

@property (nonatomic, strong) LoginView *loginView;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)xb_setup{
    self.title = @"登录";
    self.view = self.loginView;
}
-(void)xb_bindViewModel{
    [[self.loginView.loginBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        //登录后，需要把GlobalClass的accountModel设置到内存，保存到db
    }];
}

-(void)xb_loadViewData{
    
}

#pragma mark - properties

-(LoginView*)loginView{
    if(!_loginView){
        _loginView = [[LoginView alloc] initWithFrame:self.view.bounds];
    }
    return _loginView;
}

@end
