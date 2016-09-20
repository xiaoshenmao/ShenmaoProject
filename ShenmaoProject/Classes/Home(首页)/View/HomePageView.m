//
//  HomePageView.m
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/14.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "HomePageView.h"
#import "UIButton+CustomButton.h"

@interface HomePageView ()

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIButton *diaryButton;
@property (strong, nonatomic) UIButton *likeButton;
@property (strong, nonatomic) UILabel *likeNumLabel;
@property (strong, nonatomic) UIButton *moreButton;
@property (nonatomic, strong) UILabel *likeLable;
@property (strong, nonatomic) UIView *contentView;
@property (strong, nonatomic) UIImageView *coverView;
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UIImageView *weatherView;
@property (strong, nonatomic) UILabel *temperatureLabel;
@property (strong, nonatomic) UILabel *locationLabel;
@property (strong, nonatomic) UILabel *dateLabel;
@property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UILabel *volLabel;

@end

@implementation HomePageView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setHomeView];
    }
    return self;
}

- (instancetype)init{
    if (self = [super init]) {
        [self setHomeView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setHomeView];
    }
    return self;
}


#pragma mark - publicMothed
- (void)setHomeView{
    
    if (_scrollView) return;
    
    _scrollView = ({
        UIScrollView *scrollView = [[UIScrollView alloc] init];
        scrollView.backgroundColor = [UIColor yellowColor];
        [self addSubview:scrollView];
        [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
    
        scrollView;
    });
    
    _contentView = ({
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor blueColor];
        [_scrollView addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(_scrollView).insets(UIEdgeInsetsMake(76, 12, 184, 12));
            make.width.equalTo(@(SCREEN_WIDTH - 24));
        }];
        
        view;
    });
    
    _moreButton = ({
        UIButton *button = [UIButton buttonWithImageName:@"more_normal"highlightImageName:@"more_highlighted" target:self action:@selector(moreButtonClick)];
        [button sizeToFit];
        [_scrollView addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make){
            make.right.equalTo(_scrollView).offset(-10);
            make.width.equalTo(@44);
            make.height.equalTo(@44);
            make.bottom.equalTo(_scrollView).offset(-70);
        }];
        
        button;
    });
    
    _likeLable = ({
        UILabel *lable = [[UILabel alloc] init];
        [_scrollView addSubview:lable];
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
        [_scrollView addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make){
            make.right.equalTo(_likeLable).offset(-30);
            make.top.equalTo(_likeLable);
            make.bottom.equalTo(_likeLable);
        }];
        
        button;
    });
    
    _diaryButton = ({
        UIButton *button = [UIButton buttonWithImageName:@"diary_normal" highlightImageName:@"diary_highlight" target:self action:@selector(diaryButtonClick)];
        [_scrollView addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(_scrollView).offset(20);
            make.size.sizeOffset(CGSizeMake(66, 44));
            make.top.equalTo(_moreButton);
        }];
        
        button;
    });
}


- (void)diaryButtonClick{
    if (_UIButtonClicked) {
        _UIButtonClicked(diaryButtonBlockType);
    }
}

- (void)moreButtonClick{
    if (_UIButtonClicked) {
        _UIButtonClicked(moreButtonBlockType);
    }
}

- (void)likeButtonClick{
    if (_UIButtonClicked) {
        _UIButtonClicked(likeButtonBlockType);
    }
}

@end
