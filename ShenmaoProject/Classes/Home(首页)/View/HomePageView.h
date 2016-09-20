//
//  HomePageView.h
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/14.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GMCPagingScrollView.h"

@interface HomePageView : UIView

typedef NS_ENUM(NSInteger, UIButtonClickType) {
    likeButtonBlockType,
    moreButtonBlockType,
    diaryButtonBlockType,
};

@property (nonatomic, copy) void (^UIButtonClicked)(UIButtonClickType type);

@end
