//
//  MainNavigationViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "MainNavigationViewController.h"

@interface MainNavigationViewController ()

@end

@implementation MainNavigationViewController

//+ (void)load{
//    UIButton *rightLbutton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [rightLbutton setImage:[UIImage imageNamed:@"nav_me_normal"] forState:UIControlStateNormal];
//    [rightLbutton setImage:[UIImage imageNamed:@"nav_me_highlighted"] forState:UIControlStateHighlighted];
//    UIButton *rightRbutton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [rightRbutton setImage:[UIImage imageNamed:@"nav_music_libraries_normal"] forState:UIControlStateNormal];
//    [rightRbutton setImage:[UIImage imageNamed:@"nav_music_libraries_highlighted"] forState:UIControlStateHighlighted];
//    UIBarButtonItem *Item1 = [[UIBarButtonItem alloc] initWithCustomView:(UIView *) rightLbutton];
//    UIBarButtonItem *Item2 = [[UIBarButtonItem alloc] initWithCustomView:(UIView *) rightRbutton];
////    self.navigationItem.rightBarButtonItems = @[Item1,Item2];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationItem];
}
//- (instancetype) initWithRootViewController:(UIViewController *)rootViewController{
//    if (self = [super init]) {
//        //
//    }
//    return self;
//}
- (void)setNavigationItem{
    UIButton *rightLbutton = [UIButton buttonWithType:UIButtonTypeCustom];
            [rightLbutton setImage:[UIImage imageNamed:@"nav_me_normal"] forState:UIControlStateNormal];
            [rightLbutton setImage:[UIImage imageNamed:@"nav_me_highlighted"] forState:UIControlStateHighlighted];
    [rightLbutton sizeToFit];
            UIButton *rightRbutton = [UIButton buttonWithType:UIButtonTypeCustom];
            [rightRbutton setImage:[UIImage imageNamed:@"nav_music_libraries_normal"] forState:UIControlStateNormal];
            [rightRbutton setImage:[UIImage imageNamed:@"nav_music_libraries_highlighted"] forState:UIControlStateHighlighted];
        [rightRbutton sizeToFit];
            UIBarButtonItem *Item1 = [[UIBarButtonItem alloc] initWithCustomView:(UIView *) rightLbutton];
            UIBarButtonItem *Item2 = [[UIBarButtonItem alloc] initWithCustomView:(UIView *) rightRbutton];
                self.navigationItem.rightBarButtonItems = @[Item1,Item2];
    }
@end
