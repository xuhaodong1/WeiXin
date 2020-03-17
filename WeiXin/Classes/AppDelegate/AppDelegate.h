//
//  AppDelegate.h
//  WeiXin
//
//  Created by 徐皓东 on 2020/3/12.
//  Copyright © 2020 徐皓东. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentCloudKitContainer *persistentContainer;

- (void)saveContext;


@end

