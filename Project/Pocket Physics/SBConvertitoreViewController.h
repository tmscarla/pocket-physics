//
//  SBConvertitoreViewController.h
//  Pocket Physics
//
//  Created by Federico Baldi Lanfranchi on 26/10/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBConvertitoreViewController : UIViewController <UIActionSheetDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

-(IBAction)dismissKeyboard:(id)sender;
-(IBAction)openPickerView:(id)sender;


@property (strong, nonatomic) IBOutlet UIView *pickerView;
@property (strong, nonatomic) NSMutableArray *pickerViewTemperaturaContent;


@property (strong, nonatomic) IBOutlet UIPickerView *pickerViewTemperatura;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerViewLunghezza;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerViewPressione;

@property (strong, nonatomic) IBOutlet UIActionSheet *pickerViewActionSheet;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *done;

@end
