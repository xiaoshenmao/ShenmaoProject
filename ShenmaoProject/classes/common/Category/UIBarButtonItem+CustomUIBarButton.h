//
//  UIButton+UIBarButtonItem.h

//
//  Created by 神猫 on 15/5/26.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CustomUIBarButton)
/**
 *  设置导航栏的按钮
 *
 *  @param normal      普通状态
 *  @param Highlighted 高亮状态
 *  @param target      target
 *  @param title       标题
 *  @param action      调用方法
 *
 *  @return UIBarButtonItem
 */
+ (UIBarButtonItem *)setButtonNormal:(NSString *)normal andHighlight:(NSString *)Highlighted andTarger:(id)target andTitle:(NSString *)title andAction:(SEL)action;

/**
 *  设置导航栏的按钮
 *
 *  @param normal      普通状态
 *  @param Highlighted 选中状态
 *  @param target      target
 *  @param title       标题
 *  @param action      调用方法
 *
 *  @return UIBarButtonItem
 */

+ (UIBarButtonItem *)setButtonNormal:(NSString *)normal andSelected:(NSString *)Selected andTarger:(id)target andTitle:(NSString *)title andAction:(SEL)action;

@end

