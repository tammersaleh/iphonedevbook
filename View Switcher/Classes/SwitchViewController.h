//
//  SwitchViewController.h
//  View Switcher
//
//  Created by Tammer Saleh on 6/15/09.
//  Copyright 2009 ThoughtBot Inc.. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BlueViewController;
@class YellowViewController;

@interface SwitchViewController : UIViewController {
	YellowViewController *yellowViewController;
	BlueViewController *blueViewController;
}

@property (retain, nonatomic) YellowViewController *yellowViewController;
@property (retain, nonatomic) BlueViewController *blueViewController;

-(IBAction)switchViews:(id)sender;

@end
