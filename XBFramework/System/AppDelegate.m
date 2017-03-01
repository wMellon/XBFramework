//
//  AppDelegate.m
//  XBFramework
//
//  Created by zoenet on 2017/2/15.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "AppDelegate.h"
#import "UserInfoVC.h"
#import "AccountViewModel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UserInfoVC *info = [[UserInfoVC alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:info];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    //注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginStateChg:) name:NSNotificationLoginStateChg object:nil];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    //登录相关
    if(![GlobalClass shareInstance].accountModel){
        [GlobalClass shareInstance].accountModel = [AccountViewModel getLastAccount];
    }
    if([[GlobalClass shareInstance].accountModel.isOnline boolValue] &&
       [[GlobalClass shareInstance].accountModel.isAutoLogin boolValue]){
        //校验token
            //成功，进入主页
            //失败，跳登录页
    }else{
        //跳登录页
        [[NSNotificationCenter defaultCenter] postNotificationName:NSNotificationLoginStateChg object:@NO];
    }
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


#pragma mark - 通知

-(void)loginStateChg:(NSNotification*)notice{
    BOOL login = [notice.object boolValue];
    if(login){
        //登录
        //假设个人信息在多处地方用到，那么这里应该掉平台接口获取个人信息，然后保存到内存，并保存到本地
    }else{
        //退出登录
    }
}

@end
