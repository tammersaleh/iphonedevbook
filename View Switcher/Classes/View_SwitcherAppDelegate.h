//
//  View_SwitcherAppDelegate.h
//  View Switcher
//
//  Created by Tammer Saleh on 6/15/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchViewController;

@interface View_SwitcherAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UIWindow *window;
	IBOutlet SwitchViewController *switchViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) SwitchViewController *switchViewController;

@end

