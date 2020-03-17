//
//  MeSub.h
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum : NSUInteger {
    PathTypeToNormalView,
    PathTypeToWebView
} PathType;
NS_ASSUME_NONNULL_BEGIN

@interface MeSub : NSObject<NSCopying>

@property(nonatomic, assign) PathType pathType;

@property(nonatomic, copy) NSString *imageStr;
@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *number;
@property(nonatomic, copy) NSString *path;

- (instancetype) initWithTitle: (NSString *) title imageStr: (NSString *) imageStr path: (NSString *) path number: (NSString *) number type: (PathType) pathType;
@end

NS_ASSUME_NONNULL_END
