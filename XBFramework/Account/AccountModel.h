//
//  AccountModel.h
//  XBFramework
//
//  Created by zoenet on 2017/2/23.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+LKDBHelper.h"

@interface AccountModel : NSObject

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *loginNo;//登录账号：手机/邮箱
@property (nonatomic, copy) NSString *loginTime;
@property (nonatomic, copy) NSString *isOnline;//是否在线
@property (nonatomic, copy) NSString *isAutoLogin;//是否自动登录
@property (nonatomic, copy) NSString *token;//用于识别用户登录是否还有效

@end
