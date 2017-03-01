//
//  UserinfoView.m
//  XBFramework
//
//  Created by zoenet on 2017/2/15.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "UserinfoView.h"
#import "UserinfoViewModel.h"

@implementation UserinfoView

-(void)xb_addElements{
    //设置元素
    _header = [[UIView alloc] init];
    _header.backgroundColor = [UIColor redColor];
    [self addSubview:_header];
    _tableView = [[UITableView alloc] init];
    [self addSubview:_tableView];
    _footer = [[UIView alloc] init];
    _footer.backgroundColor = [UIColor redColor];
    [self addSubview:_footer];
}

-(void)xb_autoLayout{
    //自动布局代码
    _header.sd_layout
    .leftSpaceToView(self, 0)
    .rightSpaceToView(self, 0)
    .topSpaceToView(self, 0)
    .heightIs(30);
    
    _footer.sd_layout
    .leftSpaceToView(self, 0)
    .rightSpaceToView(self, 0)
    .bottomSpaceToView(self, 0)
    .heightIs(30);
    
    _tableView.sd_layout
    .leftSpaceToView(self, 0)
    .rightSpaceToView(self, 0)
    .topSpaceToView(_header, 0)
    .bottomSpaceToView(_footer, 0);
}

-(void)xb_bindViewModel{
    
}
@end
