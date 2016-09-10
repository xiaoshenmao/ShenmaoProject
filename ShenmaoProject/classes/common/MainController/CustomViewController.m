//
//  CustomViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "CustomViewController.h"
#import "HomeViewController.h"
#import "MovieViewController.h"
#import "MusicViewController.h"
#import "ReadingViewController.h"
#import "MainNavigationViewController.h"
@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //setting navigation attribute
    NSMutableDictionary *tabNomal = [NSMutableDictionary dictionary];
    tabNomal [NSFontAttributeName] = [UIFont systemFontOfSize:15];
    tabNomal [NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary *tabSelected = [NSMutableDictionary dictionary];
    tabSelected [NSFontAttributeName] = [UIFont systemFontOfSize:15];
    tabSelected [NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    //setting appearance
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:tabNomal forState:UIControlStateNormal];
    [item setTitleTextAttributes:tabSelected forState:UIControlStateSelected];
    //Home controller
    [self setController:[[HomeViewController alloc] init] andNomalImage:[UIImage imageNamed:@"tab_home_normal"] andSelectedImage:[UIImage imageNamed:@"tab_home_selected"] andTitle:@"首页"];
    //Reading controller
    [self setController:[[ReadingViewController alloc] init] andNomalImage:[UIImage imageNamed:@"tab_reading_normal"] andSelectedImage:[UIImage imageNamed:@"tab_reading_selected"] andTitle:@"阅读"];
    //Music controller
    [self setController:[[MusicViewController alloc] init] andNomalImage:[UIImage imageNamed:@"tab_music_normal"] andSelectedImage:[UIImage imageNamed:@"tab_music_selected"] andTitle:@"音乐"];
    //Movie
    [self setController:[[MovieViewController alloc] init] andNomalImage:[UIImage imageNamed:@"tab_movie_normal"] andSelectedImage:[UIImage imageNamed:@"tab_movie_selected"] andTitle:@"电影"];
}
- (void)setController:(UIViewController *)controller andNomalImage:(UIImage *)NomalImage andSelectedImage:(UIImage *)selectedImage andTitle:(NSString *)title{
    UINavigationController *Navigation = [[UINavigationController alloc] initWithRootViewController:controller];
    Navigation.tabBarItem.title = title;
    Navigation.tabBarItem.selectedImage = selectedImage;
    Navigation.tabBarItem.image = NomalImage;
    [self addChildViewController:Navigation];
}
@end