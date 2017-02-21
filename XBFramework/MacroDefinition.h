//
//  MacroDefinition.h
//  XBFramework
//
//  Created by zoenet on 2017/2/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#ifndef MacroDefinition_h
#define MacroDefinition_h

#define ScreenHeight [[UIScreen mainScreen] bounds].size.height//获取屏幕高度，兼容性测试
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width//获取屏幕宽度，兼容性测试

// 获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

/**
 *  将enum转换成string。
 *  注：只是普通的转换
 *
 *  @param enum
 *
 *  @return
 */
#define enumToString(enum) [NSString stringWithFormat:@"%d", enum]

//弱引用
#define XBWeakSelfDefine __weak typeof(self) weakSelf = self;
#define XBWeakSelf weakSelf

#endif /* MacroDefinition_h */
