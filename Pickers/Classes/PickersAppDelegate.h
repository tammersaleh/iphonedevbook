//
//  PickersAppDelegate.h
//  Pickers
//
//  Created by Tammer Saleh on 7/22/09.
//  Copyright Tammer Saleh Consulting, Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PickersViewController;

@interface PickersAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UITabBarController *rootController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *rootController;

@end

