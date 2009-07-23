//
//  SingleComponentPickerViewConroller.h
//  Pickers
//
//  Created by Tammer Saleh on 7/22/09.
//  Copyright 2009 Tammer Saleh Consulting, Inc.. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SingleComponentPickerViewConroller : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
	IBOutlet UIPickerView *singlePicker;
	NSArray *pickerData
}

@property (nonatomic, retain) UIPickerView *singlePicker;
@property (nonatomic, retain) NSArray *pickerData;
-(IBAction)buttonPressed;s

@end
