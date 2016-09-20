//
//  HomeModel.h
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/13.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseItem.h"

@interface HomeModel : BaseItem

@property (nonatomic, strong) NSString *authorId;
@property (nonatomic, strong) NSString *commentNum;
@property (nonatomic, strong) NSString *hpImgOriginalUrl;
@property (nonatomic, strong) NSString *hpImgUrl;
@property (nonatomic, strong) NSString *hpMaketTime;
@property (nonatomic, strong) NSString *hpTitle;
@property (nonatomic, strong) NSString *hpcontentId;
@property (nonatomic, strong) NSString *webUrl;
@property (nonatomic, strong) NSString *lastUpdateDate;
@property (nonatomic, strong) NSString *wbImgUrl;
@property (nonatomic, strong) NSString *shareNum;
@property (nonatomic, strong) NSString *praisenum;



@end
