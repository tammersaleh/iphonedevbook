//
//  DatePickerViewController.m
//  Pickers
//
//  Created by Tammer Saleh on 7/22/09.
//  Copyright 2009 Tammer Saleh Consulting, Inc.. All rights reserved.
//

#import "DatePickerViewController.h"


@implementation DatePickerViewController

-(IBAction)buttonPressed {
	NSDate *selected = [datePicker date];
	NSString *message = [[NSString alloc] initWithFormat:@"The date and time you selected is: %@", selected];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date and Time Selected" 
													message:message 
												   delegate:nil 
										  cancelButtonTitle:@"Yes, I did." 
										  otherButtonTitles:nil];
	[alert show];
	[alert release];
	[message release];
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSDate *now = [[NSDate alloc] init];
	[datePicker setDate:now animated:YES];
	[now release];
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
	[datePicker release];
    [super dealloc];
}


@end
