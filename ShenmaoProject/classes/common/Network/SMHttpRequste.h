//
//  SMHttpRequste.h
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/13.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import <Foundation/Foundation.h>



// 成功，失败 block
typedef void(^SuccessBlock)(id responseObject);
typedef void(^FailBlock)(NSError *error);

@interface SMHttpRequste : NSObject


typedef NS_ENUM(NSUInteger, MLBActionType) {
    MLBActionTypeDiary,
    MLBActionTypePraise,
    MLBActionTypeMore,
};

typedef NS_ENUM(NSUInteger, MLBReadType) {
    MLBReadTypeEssay,
    MLBReadTypeSerial,
    MLBReadTypeQuestion,
};

typedef NS_ENUM(NSUInteger, MLBUserType) {
    MLBUserTypeMe,
    MLBUserTypeOthers,
};

#pragma mark - get Api String

+ (NSString *)apiStringForReadDetailsWithReadType:(MLBReadType)readType;

+ (NSString *)apiStringForReadWithReadType:(MLBReadType)readType;

+ (NSString *)apiStringForMusic;

+ (NSString *)apiStringForMovie;

#pragma mark - Common

+ (void)requestPraiseCommentsWithType:(NSString *)type itemId:(NSString *)itemId firstItemId:(NSString *)firstItemId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

+ (void)requestTimeCommentsWithType:(NSString *)type itemId:(NSString *)itemId firstItemId:(NSString *)firstItemId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

+ (void)requestReadDetailsWithType:(NSString *)type itemId:(NSString *)itemId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

+ (void)requestRelatedsWithType:(NSString *)type itemId:(NSString *)itemId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

#pragma mark - Home Page

// 首页图文列表
+ (void)requestHomeMoreWithSuccess:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

#pragma mark - Read

// 头部轮播列表
+ (void)requestReadCarouselWithSuccess:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 头部轮播详情
+ (void)requestReadCarouselDetailsById:(NSString *)carouselId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 文章列表
+ (void)requestReadIndexWithSuccess:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 短篇文章详情
+ (void)requestEssayDetailsById:(NSString *)essayId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 短篇文章评论列表
+ (void)requestEssayCommentsById:(NSString *)essayId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 短篇文章相关列表
+ (void)requestEssayRelatedsById:(NSString *)essayId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 连载文章列表
+ (void)requestSerialListById:(NSString *)serialId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

#pragma mark - Music

// 音乐 ID 列表
+ (void)requestMusicIdListWithSuccess:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 音乐详情
+ (void)requestMusicDetailsById:(NSString *)musicId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 音乐详情评论点赞数降序排序列表
+ (void)requestMusicDetailsPraiseCommentsById:(NSString *)musicId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 音乐详情相似歌曲列表
+ (void)requestMusicDetailsRelatedMusicsById:(NSString *)musicId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

#pragma mark - Movie

// 获取电影列表
+ (void)requestMovieListWithOffer:(NSInteger)offset success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 获取电影详情
+ (void)requestMovieDetailsById:(NSString *)movieId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 获取电影故事列表
+ (void)requestMovieDetailsMovieStoriesById:(NSString *)movieId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

+ (void)requestMovieStoriesById:(NSString *)movieId firstItemId:(NSString *)firstItemId forDetails:(BOOL)forDetails success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 获取电影短评列表
+ (void)requestMovieDetailsMovieReviewsById:(NSString *)movieId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

+ (void)requestMovieReviewsById:(NSString *)movieId firstItemId:(NSString *)firstItemId forDetails:(BOOL)forDetails success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

// 获取电影评论列表
+ (void)requestMovieDetailsPraiseCommentsById:(NSString *)movieId success:(SuccessBlock)successBlock fail:(FailBlock)failBlock;

@end
