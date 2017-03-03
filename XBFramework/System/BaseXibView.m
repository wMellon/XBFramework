//
//  BaseXibView.m
//  XBFramework
//
//  Created by zoenet on 2017/3/2.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "BaseXibView.h"

@implementation BaseXibView

-(void)awakeFromNib{
    [super awakeFromNib];
    self.autoresizingMask = UIViewAutoresizingNone;
}

-(void)setXb_size:(CGSize)size{
    self.size = size;
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

-(void)setXb_width:(CGFloat)width{
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

-(void)setXb_height:(CGFloat)height{
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

@end
