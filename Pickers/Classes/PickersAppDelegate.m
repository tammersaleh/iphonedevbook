//
//  PickersAppDelegate.m
//  Pickers
//
//  Created by Tammer Saleh on 7/22/09.
//  Copyright Tammer Saleh Consulting, Inc. 2009. All rights reserved.
//

#import "PickersAppDelegate.h"

@implementation PickersAppDelegate

@synthesize window;
@synthesize rootController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	[window addSubview:rootController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[rootController release];
    [window release];
    [super dealloc];
}


@end
