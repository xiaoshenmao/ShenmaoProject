//
//  UIButton+UIBarButtonItem.m
//
//  Created by 神猫 on 15/5/26.
//  Copyright © 2015年 神猫. All rights reserved.
//

#import "UIBarButtonItem+CustomUIBarButton.h"

@implementation UIBarButtonItem (CustomUIBarButton)

+ (UIBarButtonItem *)setButtonNormal:(NSString *)normal andHighlight:(NSString *)Highlighted andTarger:(id)target andTitle:(NSString *)title andAction:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:Highlighted] forState:UIControlStateHighlighted];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    return buttonItem;
}

+ (UIBarButtonItem *)setButtonNormal:(NSString *)normal andSelected:(NSString *)Selected andTarger:(id)target andTitle:(NSString *)title andAction:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:Selected] forState:UIControlStateSelected];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    return buttonItem;
}
@end
