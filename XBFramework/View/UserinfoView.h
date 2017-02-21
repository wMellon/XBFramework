//
//  UserinfoView.h
//  XBFramework
//
//  Created by zoenet on 2017/2/15.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "BaseSDAutoView.h"

@class UserinfoViewModel;

@interface UserinfoView : BaseSDAutoView

@property(nonatomic, strong) UIView *header;
@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UIView *footer;

@property(nonatomic, strong) UserinfoViewModel *userinoViewModel;

@end
