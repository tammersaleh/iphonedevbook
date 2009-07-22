//
//  View_SwitcherAppDelegate.m
//  View Switcher
//
//  Created by Tammer Saleh on 6/15/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import "View_SwitcherAppDelegate.h"
#import "SwitchViewController.h"

@implementation View_SwitcherAppDelegate

@synthesize window;
@synthesize switchViewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	[window addSubview:switchViewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
	[switchViewController release];
    [super dealloc];
}


@end
