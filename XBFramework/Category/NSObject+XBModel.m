//
//  NSObject+Model.m
//  XBFramework
//
//  Created by zoenet on 2017/3/1.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "NSObject+XBModel.h"

@implementation NSObject (XBModel)

+ (nullable instancetype)xb_modelWithJSON:(id)json{
    return [self yy_modelWithJSON:json];
}

+ (nullable instancetype)xb_modelWithDictionary:(NSDictionary *)dictionary{
    return [self yy_modelWithDictionary:dictionary];
}

@end
