//
//  SBConvertitoreViewController.m
//  Pocket Physics
//
//  Created by Federico Baldi Lanfranchi on 26/10/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import "SBConvertitoreViewController.h"

@interface SBConvertitoreViewController ()


@end

@implementation SBConvertitoreViewController
@synthesize pickerView;
@synthesize pickerViewActionSheet;
@synthesize done;
@synthesize pickerViewTemperatura;
@synthesize pickerViewLunghezza;
@synthesize pickerViewPressione;

-(NSMutableArray *)pickerViewTemperaturaContent
{
    if (!_pickerViewTemperaturaContent) {
        _pickerViewTemperaturaContent = [[NSMutableArray alloc] init];
    }

    return _pickerViewTemperaturaContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.pickerViewTemperaturaContent addObject:@"Kelvin"];
    [self.pickerViewTemperaturaContent addObject:@"Celsius"];
    
}

-(IBAction)openPickerView:(id)sender
{
   pickerViewActionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil, nil];
    pickerViewActionSheet.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    
    UIPickerView *picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 464)];
    picker.delegate = self;
    picker.dataSource = self;
    picker.showsSelectionIndicator = YES;
    
    UIToolbar *pickerToolbar = [[UIToolbar alloc] init];
    pickerToolbar.barStyle = UIBarStyleBlackTranslucent;
    [pickerToolbar sizeToFit];
    
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    [barItems addObject:flexSpace];
    
    done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(dismissPickerView:)];
    [barItems addObject:done];
    
    
    [pickerToolbar setItems:barItems animated:YES];
    
    [pickerViewActionSheet addSubview:pickerToolbar];
    [pickerViewActionSheet addSubview:picker];
    [pickerViewActionSheet showInView:self.view];
    [pickerViewActionSheet setBounds:CGRectMake(0, 0, 320, 464)];
    
    
    
 
}

-(IBAction)dismissPickerView:(id)sender
{
    [pickerViewActionSheet dismissWithClickedButtonIndex:0 animated:YES];
}

-(IBAction)dismissKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)picker
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)picker numberOfRowsInComponent:(NSInteger)component
{
    return self.pickerViewTemperaturaContent.count;
}

-(NSString *)pickerView:(UIPickerView *)picker titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.pickerViewTemperaturaContent objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)picker didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
