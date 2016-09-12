//
//  HomeViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "HomeViewController.h"
#import "UIBarButtonItem+CustomUIBarButton.h"
#import "Masonry.h"

@interface HomeViewController ()<UIScrollViewDelegate>
@property (nonatomic, weak) UIScrollView *homescrollView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setNavigationAttributes];
    [self setViewAttribute];
}

- (void)setViewAttribute
{
    UIImageView *homeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nav_home_title"]];
    self.navigationItem.titleView = homeView;
    UIScrollView *homescrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    homescrollView.contentSize = CGSizeMake(ScreenWidth *.5, ScreenHeight);
    homescrollView.backgroundColor = [UIColor redColor];
    self.homescrollView = homescrollView;
    self.homescrollView.delegate = self;
    [self.view addSubview:homescrollView];
    
    
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"scrollView.bounds.size.width -> %f,scrollView.bounds.size.height  -> %f",scrollView.bounds.size.height,scrollView.bounds.size.width);
}


- (void)setNavigationAttributes
{
    
}

- (void)rightButtonClick{
    NSLog(@"%s",__func__);
}
@end
