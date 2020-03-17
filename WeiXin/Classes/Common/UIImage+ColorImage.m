//
//  UIImage+ColorImage.m
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/14.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import "UIImage+ColorImage.h"


@implementation UIImage (ColorImage)
+ (UIImage *)imageWithColor:(UIColor *)color{
CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
UIGraphicsBeginImageContext(rect.size);
CGContextRef context = UIGraphicsGetCurrentContext();
CGContextSetFillColorWithColor(context, [color CGColor]);
CGContextFillRect(context, rect);
UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext(); return image;
}@end
