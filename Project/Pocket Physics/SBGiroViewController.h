//
//  SBGiroViewController.h
//  Pocket Physics
//
//  Created by Federico Baldi Lanfranchi on 19/11/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBGiroViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textFieldAngolo;
@property (strong, nonatomic) IBOutlet UITextField *textFieldRaggio;
@property (strong, nonatomic) IBOutlet UITextField *textFieldMassa;

@property (strong, nonatomic) IBOutlet UILabel *labelTensione;
@property (strong, nonatomic) IBOutlet UILabel *labelVelocità;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

-(IBAction)calcolaVelocità:(id)sender;
-(IBAction)calcolaTensione:(id)sender;
-(IBAction)dismissKeyboard:(id)sender;

@end
