//
//  NSObject+Model.h
//  XBFramework
//
//  Created by zoenet on 2017/3/1.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (XBModel)

+ (nullable instancetype)xb_modelWithJSON:(id)json;
+ (nullable instancetype)xb_modelWithDictionary:(NSDictionary *)dictionary;

@end
