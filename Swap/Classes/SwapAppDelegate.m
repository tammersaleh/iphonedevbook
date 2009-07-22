//
//  SwapAppDelegate.m
//  Swap
//
//  Created by Tammer Saleh on 5/31/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import "SwapAppDelegate.h"
#import "SwapViewController.h"

@implementation SwapAppDelegate

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
