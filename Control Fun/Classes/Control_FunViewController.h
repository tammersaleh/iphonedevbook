//
//  Control_FunViewController.h
//  Control Fun
//
//  Created by Tammer Saleh on 5/29/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Control_FunViewController : UIViewController {
	IBOutlet UITextField *nameField;
	IBOutlet UITextField *numberField;
}

@property (nonatomic, retain) UITextField *nameField;
@property (nonatomic, retain) UITextField *numberField;
- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundClick:(id)sender;
@end

