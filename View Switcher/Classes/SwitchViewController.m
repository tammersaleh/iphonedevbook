//
//  SwitchViewController.m
//  View Switcher
//
//  Created by Tammer Saleh on 6/15/09.
//  Copyright 2009 ThoughtBot Inc.. All rights reserved.
//

#import "SwitchViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"

@implementation SwitchViewController
@synthesize blueViewController;
@synthesize yellowViewController;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	BlueViewController *blueController = [[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
	self.blueViewController = blueController;
	[self.view insertSubview:blueController.view atIndex:0];
    [blueController release];
}

- (IBAction)switchViews:(id)sender {
	// Lazy load the nib first time button is pushed
	if (self.yellowViewController == nil) {
		YellowViewController *yellowController = [[YellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
		self.yellowViewController = yellowController;
		[yellowController release];
	}
	
	[UIView beginAnimations:@"View Flip" context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	
	if (self.blueViewController.view.superview == nil) {
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
		[blueViewController viewWillAppear:YES];
		[yellowViewController viewWillDisappear:YES];
		
		[yellowViewController.view removeFromSuperview];
		[self.view insertSubview:blueViewController.view atIndex:0];
		
		[yellowViewController viewDidDisappear:YES];
		[blueViewController viewDidAppear:YES];
	} else {
		[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
		[yellowViewController viewWillAppear:YES];
		[blueViewController viewWillDisappear:YES];
		
		[blueViewController.view removeFromSuperview];
		[self.view insertSubview:yellowViewController.view atIndex:0];
		
		[blueViewController viewDidDisappear:YES];
		[yellowViewController viewDidAppear:YES];
	}
	[UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[yellowViewController release];
	[blueViewController release];
    [super dealloc];
}


@end
