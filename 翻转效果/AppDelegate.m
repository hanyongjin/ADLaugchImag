//
//  AppDelegate.m
//  翻转效果
//
//  Created by 韩永进 on 16/7/11.
//  Copyright © 2016年 han. All rights reserved.
//

#import "AppDelegate.h"
#import "AViewController.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(chengGong:) name:@"chenggong" object:nil];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [AViewController new];
    
    
    
    return YES;
}
-(void)chengGong:(NSNotification*)noti{
    
    ViewController *vc = [[ViewController alloc]init];
    
    vc.image = (UIImage*)noti.object;
    
    self.window.rootViewController = vc;
}
@end
