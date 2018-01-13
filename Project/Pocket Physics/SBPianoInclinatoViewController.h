//
//  SBPianoInclinatoViewController.h
//  Pocket Physics
//
//  Created by Tommaso Scarlatti on 22/11/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBPianoInclinatoViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textFieldAngolo;
@property (strong, nonatomic) IBOutlet UITextField *textFieldAttrito;
@property (strong, nonatomic) IBOutlet UITextField *textFieldMassa;
@property (strong, nonatomic) IBOutlet UITextField *textFieldAcc;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewPiano;

@property (strong, nonatomic) IBOutlet UILabel *labelTensione;

- (IBAction)showResult:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;

- (void) calculate;

@end
