//
//  NetSpeedCheck.h
//  checkNet
//
//  Created by 郭杰 on 2018/8/27.
//  Copyright © 2018年 郭杰. All rights reserved.
//

#import <Foundation/Foundation.h>
// 监听下载的速度
extern NSString *const GJDownloadNetworkSpeedNotificationKey;
// 监听上传的速度
extern NSString *const GJUploadNetworkSpeedNotificationKey;


@interface NetSpeedCheck : NSObject

// 下载速度
@property (nonatomic, copy, readonly) NSString *downloadNetworkSpeed;
//  上传速度
@property (nonatomic, copy, readonly) NSString *uploadNetworkSpeed;
//  单例
+ (instancetype)shareNetworkSpeed;

- (void)startCheckNet;
- (void)stopCheckNet;
@end

