//
//  Button_FunViewController.h
//  Button Fun
//
//  Created by Tammer Saleh on 5/29/09.
//  Copyright ThoughtBot Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Button_FunViewController : UIViewController {
	IBOutlet UILabel *statusText;
}
@property (retain, nonatomic) UILabel *statusText;

- (IBAction)buttonPressed:(id)sender;
@end

