//
//  GlobalClass.h
//  XBFramework
//
//  Created by zoenet on 2017/2/23.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AccountModel.h"
#import "UserinfoModel.h"

@interface GlobalClass : NSObject

@property (nonatomic, strong) AccountModel *accountModel;//当前登录账户
@property (nonatomic, strong) UserinfoModel *userinfoModel;//个人信息

+(GlobalClass*)shareInstance;

@end
