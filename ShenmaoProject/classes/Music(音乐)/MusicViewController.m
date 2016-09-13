//
//  MusicViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "MusicViewController.h"
#import "UIBarButtonItem+CustomUIBarButton.h"

@interface MusicViewController ()

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationAttribute];
}

- (void)setNavigationAttribute{
    self.navigationItem.title = @"音乐";
    UIBarButtonItem *Item = [UIBarButtonItem setButtonNormal:@"nav_music_libraries_normal" andHighlight:@"nav_music_libraries_highlighted" andTarger:self andTitle:nil andAction:@selector(navMusicClick)];
    self.navigationItem.leftBarButtonItem = Item;
}

- (void)navMusicClick{
//    self.navigationController pushViewController:<#(nonnull UIViewController *)#> animated:<#(BOOL)#>
}
@end
