//
//  MeSub.m
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import "MeSub.h"
@implementation MeSub

- (instancetype)initWithTitle: (NSString *) title imageStr: (NSString *) imageStr path: (NSString *) path number: (NSString *) number type: (PathType) pathType{
    self = [super init];
    if (self) {
        _imageStr = [imageStr copy];
        _title = [title copy];
        _path = [path copy];
        _number = [number copy];
        _pathType = pathType;
    }
    return self;
}

- (id)copy{
    return [[MeSub alloc] init];
}

//- (BOOL)isEqual:(id)other
//{
//    if (other == self) {
//        return YES;
//    } else if (![super isEqual:other]) {
//        return NO;
//    } else {
//        return <#comparison expression#>;
//    }
//}

//- (NSUInteger)hash
//{
//    return <#hash expression#>;
//}

@end
