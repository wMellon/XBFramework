//
//  GlobalClass.m
//  XBFramework
//
//  Created by zoenet on 2017/2/23.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "GlobalClass.h"

@implementation GlobalClass

+(GlobalClass*)shareInstance{
    static dispatch_once_t onceToken;
    __block GlobalClass *globalClass;
    dispatch_once(&onceToken, ^{
        globalClass = [[GlobalClass alloc] init];
    });
    return globalClass;
}

@end
