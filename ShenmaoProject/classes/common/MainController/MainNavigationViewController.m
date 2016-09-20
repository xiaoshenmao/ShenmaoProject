//
//  MainNavigationViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "MainNavigationViewController.h"
#import "UIBarButtonItem+CustomUIBarButton.h"
#import "SearchViewController.h"


@interface MainNavigationViewController ()

@end

@implementation MainNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationItem];
}
- (instancetype)initWithRootViewController:(UIViewController *)rootViewController{
    if (self = [super initWithRootViewController:rootViewController]) {
        UIBarButtonItem *mainLeftButton = [UIBarButtonItem setButtonNormal:@"nav_me_normal" andHighlight:@"nav_me_highlighted" andTarger:self andTitle:nil andAction:@selector(mainLeftButtonClick)];
        UIBarButtonItem *mainRightButton = [UIBarButtonItem setButtonNormal:@"more_normal" andHighlight:@"more_highlighted" andTarger:self andTitle:nil andAction:@selector(mainMusicButtonClick)];
        rootViewController.navigationItem.rightBarButtonItems = @[mainLeftButton,mainRightButton];
         UIBarButtonItem *leftSearchButton = [UIBarButtonItem setButtonNormal:@"icon_search" andHighlight:@"icon_search" andTarger:self andTitle:nil andAction:@selector(mainSearchButtonClick)];
        rootViewController.navigationItem.leftBarButtonItem = leftSearchButton;
    }
    return self;
}

- (void)setNavigationItem{
    
}

- (void)mainLeftButtonClick{
       
}

- (void)mainMusicButtonClick{
    
}
#pragma mark - searchViewController
- (void)mainSearchButtonClick{
     NSLog(@"%s",__func__);
    [self presentViewController: [[UINavigationController alloc] initWithRootViewController:[[SearchViewController alloc] init]] animated:YES completion:nil];
}
@end

