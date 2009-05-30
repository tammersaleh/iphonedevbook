//
//  Control_FunViewController.m
//  Control Fun
//
//  Created by Tammer Saleh on 5/29/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import "Control_FunViewController.h"

@implementation Control_FunViewController
@synthesize nameField;
@synthesize numberField;

- (IBAction)textFieldDoneEditing:(id)sender {
	[sender resignFirstResponder];
}

- (IBAction)backgroundClick:(id)sender {
	[nameField resignFirstResponder];
	[numberField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (void)dealloc {
    [super dealloc];
}

@end
