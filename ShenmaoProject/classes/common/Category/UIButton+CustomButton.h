//
//  UIButton+CustomButton.h
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/12.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CustomButton)

#pragma mark - UIButton
/**
 *  快捷设置按钮
 *
 *  @param imageName          图片名称
 *  @param highlightImageName 高亮状态下
 *  @param target             target
 *  @param action             调用方法
 *
 *  @return button
 */
+ (UIButton *)buttonWithImageName:(NSString *)imageName highlightImageName:(NSString *)highlightImageName target:(id)target action:(SEL)action;
/**
 *  快捷设置按钮
 *
 *  @param imageName         图片名称
 *  @param selectedImageName 选中状态下
 *  @param target            target
 *  @param action            调用方法
 *
 *  @return button
 */
+ (UIButton *)buttonWithImageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName target:(id)target action:(SEL)action;

/**
 *  快捷设置
 *
 *  @param imageName          背景图片
 *  @param highlightImageName 高亮图片
 *  @param target             target
 *  @param action             调用方法
 *
 *  @return button
 */
+ (UIButton *)buttonWithBackgroundImageName:(NSString *)imageName highlightImageName:(NSString *)highlightImageName target:(id)target action:(SEL)action;
/**
 *  快捷设置不带图片的按钮
 *
 *  @param title      设置文字
 *  @param titleColor 文字颜色
 *  @param fontSize   文字大小
 *  @param target     target
 *  @param action     调用方法
 *
 *  @return button
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(NSInteger)fontSize target:(id)target action:(SEL)action;

@end
