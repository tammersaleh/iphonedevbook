//
//  Control_FunViewController.h
//  Control Fun
//
//  Created by Tammer Saleh on 5/29/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kShowSegmentIndex 0

@interface Control_FunViewController : UIViewController <UIActionSheetDelegate> {
	IBOutlet UITextField *nameField;
	IBOutlet UITextField *numberField;
	IBOutlet UILabel     *sliderLabel;
	IBOutlet UISwitch    *leftSwitch;
	IBOutlet UISwitch    *rightSwitch;
	IBOutlet UIView      *switchView;
	IBOutlet UIButton    *doSomethingButton;
}

@property (nonatomic, retain) UITextField *nameField;
@property (nonatomic, retain) UITextField *numberField;
@property (nonatomic, retain) UILabel     *sliderLabel;
@property (nonatomic, retain) UISwitch    *leftSwitch;
@property (nonatomic, retain) UISwitch    *rightSwitch;
@property (nonatomic, retain) UIView      *switchView;
@property (nonatomic, retain) UIButton    *doSomethingButton;

- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundClick:(id)sender;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)switchChanged:(id)sender;
- (IBAction)toggleShowHide:(id)sender;
- (IBAction)doSomething:(id)sender;

@end

