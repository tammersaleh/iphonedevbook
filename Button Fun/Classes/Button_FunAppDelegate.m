//
//  Button_FunAppDelegate.m
//  Button Fun
//
//  Created by Tammer Saleh on 5/29/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import "Button_FunAppDelegate.h"
#import "Button_FunViewController.h"

@implementation Button_FunAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
