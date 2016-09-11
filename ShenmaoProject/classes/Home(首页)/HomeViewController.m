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
    UIImageView *homeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nav_home_title"]];
                             self.navigationItem.titleView = homeView;
    [self setNavigationAttribute];
}

- (void)setNavigationAttribute
{
    
}

- (void)rightButtonClick{
    NSLog(@"%s",__func__);
}
@end
