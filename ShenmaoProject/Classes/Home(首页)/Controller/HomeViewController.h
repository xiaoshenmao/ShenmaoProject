//
//  HomeViewController.h
//  ShenmaoProject
//
//  Created by 神猫 on 16/9/10.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : ShenmaoBaseViewController

#pragma mark - public
@property (nonatomic, copy) CommonActionBlock likeButtonBlock;
@property (nonatomic, copy) CommonActionBlock moreButtonBlock;
@property (nonatomic, copy) CommonActionBlock diaryButtonBlock;
@end
