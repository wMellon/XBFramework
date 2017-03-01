//
//  UserinfoViewModel.m
//  XBFramework
//
//  Created by zoenet on 2017/2/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "UserinfoViewModel.h"

@implementation UserinfoViewModel

-(void)loadViewData{
    self.dataSource = [[NSMutableArray alloc] init];
    [self.dataSource addObject:@"徐秀滨"];
    [self.dataSource addObject:@"男"];
    NSString *string = @"(农历)";
    NSString *detail = [@"1991-11-03 12:00:00" substringToIndex:10];
    NSString *temp = [NSString stringWithFormat:@"%@ %@", string, detail];
    NSMutableAttributedString *labelAttr = [[NSMutableAttributedString alloc] initWithString:temp];
    [labelAttr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, string.length)];
    [self.dataSource addObject:labelAttr];
    [self.refreshUISubject sendNext:nil];
}

-(RACSubject *)refreshUISubject{
    if(!_refreshUISubject){
        _refreshUISubject = [RACSubject subject];
    }
    return _refreshUISubject;
}
@end
