//
//  AutosizeViewController.m
//  Autosize
//
//  Created by Tammer Saleh on 5/31/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import "AutosizeViewController.h"

@implementation AutosizeViewController
@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;

- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation duration:(NSTimeInterval)duration {
	UIInterfaceOrientation toOrientation = self.interfaceOrientation;
	if (toOrientation == UIInterfaceOrientationPortrait || toOrientation == UIInterfaceOrientationPortraitUpsideDown) {
		button1.frame = CGRectMake( 20,  20, 125, 125);
		button2.frame = CGRectMake(175,  20, 125, 125);
		button3.frame = CGRectMake( 20, 168, 125, 125);
		button4.frame = CGRectMake(175, 168, 125, 125);
		button5.frame = CGRectMake( 20, 315, 125, 125);
		button6.frame = CGRectMake(175, 315, 125, 125);
	} else {
		button1.frame = CGRectMake( 20,  20, 125, 125);
		button2.frame = CGRectMake( 20, 155, 125, 125);
		button3.frame = CGRectMake(177,  20, 125, 125);
		button4.frame = CGRectMake(177, 155, 125, 125);
		button5.frame = CGRectMake(328,  20, 125, 125);
		button6.frame = CGRectMake(328, 155, 125, 125);		
	}	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait ||
			interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
			interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[button1 release];
	[button2 release];
	[button3 release];
	[button4 release];
	[button5 release];
	[button6 release];
    [super dealloc];
}

@end
