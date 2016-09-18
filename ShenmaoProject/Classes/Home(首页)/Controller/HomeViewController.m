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
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"
#import "HomePageView.h"


@interface HomeViewController ()<GMCPagingScrollViewDelegate,GMCPagingScrollViewDataSource>
/** pagingScrollView */
@property (nonatomic, strong) GMCPagingScrollView *pagingScrollView;
/** 数组 */
@property (nonatomic, strong) NSMutableArray *dicArray;
/** diary_normal */
@property (nonatomic, strong) UIButton *diaryButton;
@property (nonatomic, strong) UILabel *diaryLabel;
@property (nonatomic, strong) UIButton *likeButton;
@property (nonatomic, strong) UILabel *likeLable;
@property (nonatomic, strong) UIButton *moreButton;
@property (nonatomic, strong) HomeModel *modelHome;
@property (nonatomic, strong) NSArray *textArray;
@end

@implementation HomeViewController

static NSString *kPageIdentifier = @"pagcell";

- (NSMutableArray *)dicArray
{
    if (!_dicArray) {
        _dicArray = [NSMutableArray array];
    }
    return  _dicArray;
}




- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    [self setNavigationAttributes];
    [self setViews];
    [self setNetworks];
    
    _textArray = @[@"http://img4.duitang.com/uploads/item/201307/29/20130729153409_YCfU2.thumb.200_0.jpeg",
                   @"http://cdn.duitang.com/uploads/item/201212/08/20121208141407_3YGMi.thumb.200_0.jpeg",
                   @"http://cdn.duitang.com/uploads/item/201308/26/20130826211332_WZ4is.thumb.200_0.jpeg",
                   @"http://img4.duitang.com/uploads/item/201301/21/20130121223918_aFk4h.thumb.200_0.jpeg",
                   @"http://img4.duitang.com/uploads/item/201309/15/20130915114846_nsy2A.thumb.200_0.jpeg",
                   @"http://cdn.duitang.com/uploads/item/201306/20/20130620142009_X3fv3.thumb.200_0.jpeg",
                   @"http://img4.duitang.com/uploads/item/201306/17/20130617202501_Z2ZNP.thumb.200_0.jpeg",
                   @"http://img4.duitang.com/uploads/item/201201/23/20120123181139_EvHrc.thumb.200_0.jpg",
                   @"http://img4.duitang.com/uploads/item/201108/24/20110824232929_T85Zt.thumb.200_0.jpg",
                   @"http://cdn.duitang.com/uploads/blog/201308/06/20130806213223_Q2Jfj.thumb.200_0.jpeg",
                   @"http://cdn.duitang.com/uploads/item/201311/10/20131110141543_UMV24.thumb.200_0.jpeg",
                   @"http://cdn.duitang.com/uploads/item/201307/18/20130718225516_RBMnr.thumb.200_0.jpeg",
                   @"http://img4.duitang.com/uploads/item/201202/05/20120205163116_x2F4E.thumb.200_0.jpg",
                   @"http://img4.duitang.com/uploads/item/201202/19/20120219150016_r48NA.thumb.200_0.jpg",];
   
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

#pragma mark - 设置View
- (void)setViews
{
    _pagingScrollView = ({
        GMCPagingScrollView *pagingScrollView = [[GMCPagingScrollView alloc] init];

        [self.view addSubview:pagingScrollView];
        pagingScrollView.backgroundColor = [UIColor blackColor];
        pagingScrollView.delegate = self;
        pagingScrollView.dataSource = self;
        pagingScrollView.pageInsets = UIEdgeInsetsZero;
        [pagingScrollView registerClass:[HomePageView class]
                          forReuseIdentifier:kPageIdentifier];
        [pagingScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];

        pagingScrollView;
    });
    
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
    [SMHttpRequste requestHomeMoreWithSuccess:^(NSMutableDictionary *responseObject) {
        if (responseObject) {
            //字典数组转模型数组
            self.dicArray = [HomeModel mj_objectArrayWithKeyValuesArray:responseObject[@"data"]];
            NSLog(@"%@",self.dicArray);
        }else{
            
        }
    } fail:^(NSError *error) {
        NSLog(@"%@",error);
    }];
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


#pragma mark - set方法


#pragma mark - pagingScrollView dataSounth

- (NSUInteger)numberOfPagesInPagingScrollView:(GMCPagingScrollView *)pagingScrollView{
    return self.dicArray.count;
}

- (UIView *)pagingScrollView:(GMCPagingScrollView *)pagingScrollView pageForIndex:(NSUInteger)index;
{
    HomePageView *page = [pagingScrollView dequeueReusablePageWithIdentifier:kPageIdentifier];
    HomeModel *model = self.dicArray[index];
    
    NSLog(@"%@",model.hpImgOriginalUrl);
    
    return page;
}

- (void)pagingScrollViewDidScroll:(GMCPagingScrollView *)pagingScrollView
{
    NSLog(@"x = %f", pagingScrollView.scrollView.contentOffset.x);
}


- (void)rightButtonClick{
    NSLog(@"%s",__func__);
}
@end
