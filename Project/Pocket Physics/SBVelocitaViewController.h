//
//  SBVelocitaViewController.h
//  Pocket Physics
//
//  Created by Tommaso Scarlatti on 20/11/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBVelocitaViewController : UIViewController

@property IBOutlet UITextField *textFieldMassa;
@property IBOutlet UITextField *textFieldRaggio;
@property IBOutlet UILabel *labelVelocitaKms;
@property IBOutlet UILabel *labelVelocitaKmh;

- (void) calculate;

- (IBAction)dismissKeyboard:(id)sender;
- (IBAction) showResult:(id)sender;

@end
