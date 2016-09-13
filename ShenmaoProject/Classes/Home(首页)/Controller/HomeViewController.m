//
//  HomeViewController.m
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "HomeViewController.h"
#import "UIBarButtonItem+CustomUIBarButton.h"
#import "HomeModel.h"
#import "GMCPagingScrollView.h"
#import "UIButton+CustomButton.h"
#import <MJExtension.h>


@interface HomeViewController ()<GMCPagingScrollViewDelegate,GMCPagingScrollViewDataSource>
/** pagingScrollView */
@property (nonatomic, strong) GMCPagingScrollView *pagingScrollView;
/** 数组 */
@property (nonatomic, strong) NSArray *dataSource;
/** diary_normal */
@property (nonatomic, strong) UIButton *diaryButton;
@property (nonatomic, strong) UILabel *diaryLabel;
@property (nonatomic, strong) UIButton *likeButton;
@property (nonatomic, strong) UILabel *likeLable;
@property (nonatomic, strong) UIButton *moreButton;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setNavigationAttributes];
    [self setViews];
    [self setNetworks];
    
}

- (void)setNavigationAttributes
{
    UIImageView *homeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nav_home_title"]];
    self.navigationItem.titleView = homeView;
}
#pragma mark - set方法
- (void)setDataSource:(NSArray *)dataSource{
    _dataSource = dataSource;
    
    
}
#pragma mark - 设置View
- (void)setViews
{
//    _pagingScrollView = ({
//        GMCPagingScrollView *pagingScrollView = [[GMCPagingScrollView alloc] init];
//        pagingScrollView.backgroundColor = [UIColor redColor];
//        self.pagingScrollView = pagingScrollView;
//        pagingScrollView.delegate = self;
//        pagingScrollView.dataSource = self;
//        _pagingScrollView = pagingScrollView;
//        [self.view addSubview:pagingScrollView];
//
//        pagingScrollView;
//    });
    
    _moreButton = ({
        UIButton *button = [UIButton buttonWithImageName:@"more_normal"highlightImageName:@"more_highlighted" target:self action:@selector(moreButtonClick)];
        [button sizeToFit];
        [self.view addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make){
            make.right.equalTo(self.view).offset(-10);
            make.width.equalTo(@44);
            make.height.equalTo(@44);
            make.bottom.equalTo(self.view).offset(-70);
        }];

        button;
        });
    
    _likeLable = ({
        UILabel *lable = [[UILabel alloc] init];
        [self.view addSubview:lable];
        lable.textColor = [UIColor grayColor];
        lable.text = @"1313";
        lable.font = [UIFont systemFontOfSize:14];
        [lable mas_makeConstraints:^(MASConstraintMaker *make){
            make.right.equalTo(_moreButton).offset(-70);
            make.top.equalTo(_moreButton);
            make.bottom.equalTo(_moreButton);
        }];
        
        lable;
    });

    _likeButton = ({
        UIButton *button = [UIButton buttonWithImageName:@"like_normal"selectedImageName:@"like_highlighted" target:self action:@selector(likeButtonClick)];
        [self.view addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make){
            make.right.equalTo(_likeLable).offset(-30);
            make.top.equalTo(_likeLable);
            make.bottom.equalTo(_likeLable);
        }];
        
        button;
    });
    
    _diaryButton = ({
        UIButton *button = [UIButton buttonWithImageName:@"diary_normal" highlightImageName:@"diary_highlight" target:self action:@selector(diaryButtonClick)];
        [self.view addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.view).offset(20);
            make.size.sizeOffset(CGSizeMake(66, 44));
            make.top.equalTo(_moreButton);
        }];
        
        button;
    });
}

#pragma mark - network
- (void)setNetworks{
//    [SMHttpRequste requestHomeMoreWithSuccess:^(NSMutableDictionary *responseObject) {
//       NSMutableDictionary  *diction = [NSDictionary mj_objectArrayWithKeyValuesArray:responseObject];
//        
//        NSLog(@"%@",responseObject);
//    } fail:^(NSError *error) {
//        NSLog(@"%@",error);
//        
//    }];
//    
    
    
   }

- (void)diaryButtonClick{
    NSLog(@"%s",__func__);
}

- (void)likeButtonClick{
    NSLog(@"%s",__func__);
}


- (void)moreButtonClick{
      NSLog(@"%s",__func__);
}

//- (NSUInteger)numberOfPagesInPagingScrollView:(GMCPagingScrollView *)pagingScrollView{
//    return self.dataSource.count;
//}
//
//- (UIView *)pagingScrollView:(GMCPagingScrollView *)pagingScrollView pageForIndex:(NSUInteger)index;
//{
//    
//}


- (void)rightButtonClick{
    NSLog(@"%s",__func__);
}
@end
