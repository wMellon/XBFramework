//
//  BaseViewController.m
//  XBFramework
//
//  Created by zoenet on 2017/2/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self xb_setup];
    [self xb_bindViewModel];
    [self xb_loadViewData];
}

-(void)xb_setup{}

-(void)xb_bindViewModel{}

-(void)xb_loadViewData{}

@end
