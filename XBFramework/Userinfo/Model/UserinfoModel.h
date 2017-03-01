//
//  UserinfoModel.h
//  XBFramework
//
//  Created by zoenet on 2017/2/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserinfoModel : NSObject

@property(nonatomic, copy) NSString *userId;
@property(nonatomic, copy) NSString *userName;
@property(nonatomic, copy) NSString *sexCode;
@property(nonatomic, copy) NSString *birthday;

//额外页面显示
@property(nonatomic, copy) NSString *sexName;
@property(nonatomic, copy) NSMutableAttributedString *birthdayAtt;

@end
