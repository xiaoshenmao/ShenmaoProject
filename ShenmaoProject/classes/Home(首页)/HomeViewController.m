//
//  HomeViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "HomeViewController.h"
#import "UIBarButtonItem+CustomUIBarButton.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    [self setNavigationAttribute];
}

- (void)setNavigationAttribute
{
    UIBarButtonItem *item = [UIBarButtonItem setButtonNormal:@"nav_me_normal" andHighlight:@"nav_me_highlighted" andTarger:self andTitle:nil andAction:@selector(rightButtonClick)];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)rightButtonClick{
    NSLog(@"%s",__func__);
}
@end
