//
//  HomePageView.m
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/14.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "HomePageView.h"

@interface HomePageView ()

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIButton *diaryButton;
@property (strong, nonatomic) UIButton *likeButton;
@property (strong, nonatomic) UILabel *likeNumLabel;
@property (strong, nonatomic) UIButton *moreButton;
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
    //setViews
    
    
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
    
    
    
    
}




@end
