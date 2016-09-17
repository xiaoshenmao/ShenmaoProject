//
//  ShenmaoBaseViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/11.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "ShenmaoBaseViewController.h"
#import "MBProgressHUD.h"

@interface ShenmaoBaseViewController ()

@end

@implementation ShenmaoBaseViewController
{
    MBProgressHUD *HUD;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

//服务器错误
- (void)showHUDErrow{
    [self showHUDString:SERVER_ERROR];
}
//显示HUD
- (void)showHUDString:(NSString *)string
{
    if (!HUD.hidden) {
        HUD.hidden = NO;
    }
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"common_icon_error"]];
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.hidden = YES;
    [HUD hideAnimated:YES afterDelay:HUD_DELAY];
}
//显示显示网络连接错误
- (void)showHUDNetworkErrow{
    [self showHUDString:BAD_NETWORK];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}




@end
