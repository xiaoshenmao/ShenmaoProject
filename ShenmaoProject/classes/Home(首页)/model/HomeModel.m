//
//  HomeModel.m
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/13.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "HomeModel.h"
#import <MJExtension.h>

@implementation HomeModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"authorId" : @"author_id",
             @"commentNum" : @"commentnum",
             @"hpImgOriginalUrl" : @"hp_img_original_url",
             @"hpImgUrl" : @"hp_img_url",
             @"hpMaketTime":@"hp_makettime",
             @"hpTitle":@"hp_title",
             @"hpcontentId":@"hpcontent_id",
             @"lastUpdateDate":@"last_update_date",
             @"praisenum":@"praisenum",
             @"shareNum":@"sharenum",
             @"wbImgUrl":@"wb_img_url",
             @"webUrl":@"web_url"
             };
    
}
@end
