//
//  BaseView.m
//  XBFramework
//
//  Created by zoenet on 2017/2/15.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "BaseSDAutoView.h"

@implementation BaseSDAutoView

-(id)init{
    self = [super init];
    if(self){
        [self xb_addElements];
        [self xb_autoLayout];
        [self xb_bindViewModel];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self xb_addElements];
        [self xb_autoLayout];
        [self xb_bindViewModel];
    }
    return self;
}

-(void)xb_addElements{}
-(void)xb_autoLayout{}
-(void)xb_bindViewModel{}

@end
