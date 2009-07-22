//
//  SwapAppDelegate.h
//  Swap
//
//  Created by Tammer Saleh on 5/31/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwapViewController;

@interface SwapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SwapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwapViewController *viewController;

@end

