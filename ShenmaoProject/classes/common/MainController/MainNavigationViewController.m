//
//  MainNavigationViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "MainNavigationViewController.h"
#import "UIBarButtonItem+CustomUIBarButton.h"


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
    }
    return self;
}

- (void)mainLeftButtonClick{
       
}

- (void)setNavigationItem{
    
}

- (void)mainMusicButtonClick{
    NSLog(@"%s",__func__);
}
@end

