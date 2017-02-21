//
//  UserinfoViewModel.h
//  XBFramework
//
//  Created by zoenet on 2017/2/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "UserinfoModel.h"

@interface UserinfoViewModel : NSObject

//@property (nonatomic, strong) UserinfoModel *userinfoModel;
@property (nonatomic, strong) NSMutableArray *dataSource;
@property (nonatomic, strong) RACSubject *refreshUISubject;

-(void)loadViewData;

@end
