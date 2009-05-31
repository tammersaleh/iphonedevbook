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
@synthesize sliderLabel;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize switchView;
@synthesize doSomethingButton;

- (void)viewDidLoad {
	UIImage *buttonImageNormal = [UIImage imageNamed:@"whitebutton.png"];
	UIImage *stretchableButtonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
	[doSomethingButton setBackgroundImage:stretchableButtonImageNormal forState:UIControlStateNormal];
	
	UIImage *buttonImagePressed = [UIImage imageNamed:@"blackbutton.png"];
	UIImage *stretchableButtonImagePressed = [buttonImagePressed stretchableImageWithLeftCapWidth:12 topCapHeight:0];
	[doSomethingButton setBackgroundImage:stretchableButtonImagePressed forState:UIControlStateHighlighted];
}

- (IBAction)doSomething:(id)sender {
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure?" 
															 delegate:self 
													cancelButtonTitle:@"No way!" 
											   destructiveButtonTitle:@"Yes, I'm sure." 
													otherButtonTitles:nil];
	[actionSheet showInView:self.view];
	[actionSheet release];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
	if (!(buttonIndex == [actionSheet cancelButtonIndex])) {
		NSString *msg = nil;
		
		if (nameField.text.length > 0)
			msg = [[NSString alloc] initWithFormat:@"You can breath easy, %@, everything went OK.", nameField.text];
		else
			msg = @"You can breath easy, everything went OK.";
			
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something was done" 
														message:msg 
													   delegate:nil 
											  cancelButtonTitle:@"Phew!" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
		[msg release];
	}
}

- (IBAction)switchChanged:(id)sender {
	UISwitch *whichSwitch = (UISwitch *)sender;
	BOOL setting = whichSwitch.isOn;
	[leftSwitch setOn:setting animated:YES];
	[rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleShowHide:(id)sender {
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	NSInteger segment = segmentedControl.selectedSegmentIndex;
	
	if (segment == kShowSegmentIndex) [switchView setHidden:NO];
	else [switchView setHidden:YES];
}

- (IBAction)sliderChanged:(id)sender {
	UISlider *slider = (UISlider *)sender;
	int progressAsInt = (int)(slider.value + 0.5f);
	NSString *newText = [[NSString alloc] initWithFormat:@"%d", progressAsInt];
	sliderLabel.text = newText;
	[newText release];
}

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
