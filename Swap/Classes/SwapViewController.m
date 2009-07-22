//
//  SwapViewController.m
//  Swap
//
//  Created by Tammer Saleh on 5/31/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import "SwapViewController.h"

@implementation SwapViewController
@synthesize landscape;
@synthesize portrait;
@synthesize landscapeFooButton;
@synthesize portraitFooButton;
@synthesize landscapeBarButton;
@synthesize portraitBarButton;

- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toOrientation duration:(NSTimeInterval)duration {
	if (toOrientation == UIInterfaceOrientationPortrait) {
		self.view = self.portrait;
		self.view.transform = CGAffineTransformIdentity;
		self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(0));
		self.view.bounds = CGRectMake(0.0, 0.0, 300.0, 480.0);
	} else if (toOrientation == UIInterfaceOrientationLandscapeLeft) {
		self.view = self.landscape;
		self.view.transform = CGAffineTransformIdentity;
		self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(-90));
		self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);		
	} else if (toOrientation == UIInterfaceOrientationPortraitUpsideDown) {
		self.view = self.portrait;
		self.view.transform = CGAffineTransformIdentity;
		self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(180));
		self.view.bounds = CGRectMake(0.0, 0.0, 300.0, 480.0);		
	} else if (toOrientation == UIInterfaceOrientationLandscapeRight) {
		self.view = self.landscape;
		self.view.transform = CGAffineTransformIdentity;
		self.view.transform = CGAffineTransformMakeRotation(degreesToRadian(90));
		self.view.bounds = CGRectMake(0.0, 0.0, 460.0, 320.0);		
	}
}

- (IBAction)buttonPressed:(id)sender {
	if (sender == portraitFooButton || sender == landscapeFooButton) {
		portraitFooButton.hidden = YES;
		landscapeFooButton.hidden = YES;
	} else {
		portraitBarButton.hidden = YES;
		landscapeBarButton.hidden = YES;
	}
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (void)dealloc {
	[landscape dealloc];
	[portrait dealloc];
	[landscapeFooButton dealloc];
	[portraitFooButton dealloc];
	[landscapeBarButton dealloc];
	[portraitBarButton dealloc];
    [super dealloc];
}

@end
