//
//  _rp5AppDelegate.m
//  rp5_mobile
//
//  Created by ClevMind on 02.07.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5AppDelegate.h"
//#import "_rp5ViewController.h"
//#import "Reachability.h"


@implementation _rp5AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Initialize Reachability
   /* Reachability *reachability = [Reachability reachabilityWithHostName:@"www.google.ru"];
    
    reachability.reachableBlock = ^(Reachability *reachability) {
        NSLog(@"Network is reachable.");
    };
    
    reachability.unreachableBlock = ^(Reachability *reachability) {
        NSLog(@"Network is unreachable.");
    };
    
    // Start Monitoring
    [reachability startNotifier];
    
    // Initialize View Controller
    self.window.rootViewController = [[_rp5ViewController alloc] initWithNibName:@"_rp5ViewController" bundle:nil];
    
    // Initialize Window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Configure Window
    [self.window setRootViewController:self.viewController];
    [self.window makeKeyAndVisible];*/

    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end