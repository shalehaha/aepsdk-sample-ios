//
//  AppDelegate.m
//  AEPSample_Objc
//
//  Created by Jiabin Geng on 6/29/20.
//  Copyright © 2020 Adobe. All rights reserved.
//

#import "AppDelegate.h"
#import <AEPServices/AEPServices-Swift.h>
#import <AEPEventhub/AEPEventhub-Swift.h>
#import <AEPSampleExtension/AEPSampleExtension-Swift.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    
//    EventHub.shared.registerExtension(AEPSampleExtension.self){_ in
//
//    }
//    EventHub.shared.start()
//
//    EventHub.shared.dispatch(event: Event(name: "test", type: .analytics, source: .requestContent, data: [:]))
//
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
