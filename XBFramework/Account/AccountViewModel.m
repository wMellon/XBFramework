//
//  AccountViewModel.m
//  XBFramework
//
//  Created by zoenet on 2017/2/23.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "AccountViewModel.h"

@implementation AccountViewModel

+(AccountModel*)getLastAccount{
    return [AccountModel searchSingleWithWhere:nil orderBy:@"loginTime desc"];
}

@end
