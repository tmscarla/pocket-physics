//
//  SBGiroViewController.m
//  Pocket Physics
//
//  Created by Federico Baldi Lanfranchi on 19/11/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import "SBGiroViewController.h"

@interface SBGiroViewController ()
@end

@implementation SBGiroViewController
@synthesize textFieldAngolo;
@synthesize labelTensione;
@synthesize labelVelocità;
@synthesize textFieldMassa;
@synthesize textFieldRaggio;
@synthesize scrollView;

- (BOOL)shouldAutorotate {
    
    return NO;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGPoint scrollPoint = CGPointMake(0, 0);
    [scrollView setContentOffset:scrollPoint animated:YES];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calcolaTensione:(id)sender
{
        NSInteger m = [textFieldMassa.text integerValue];
        double ang = [textFieldAngolo.text doubleValue];
        
        
        float tensione = 3 * m * 9.81 * (1 + cos(ang));
        [labelTensione setText:[NSString stringWithFormat:@"T = %3.f N", tensione]];

    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    textFieldAngolo.delegate = self;
    textField = textFieldAngolo;
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [scrollView setContentOffset:scrollPoint animated:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [scrollView setContentOffset:CGPointZero animated:YES];
}

- (IBAction)calcolaVelocità:(id)sender
{
        
        double ang = [textFieldAngolo.text doubleValue];
        float r = [textFieldRaggio.text floatValue];
        
        float velocità = sqrtf(r * 9.81 * (2 + cos(ang)));
        [labelVelocità setText:[NSString stringWithFormat:@"V = %3.f m/s", velocità]];
    
}

-(IBAction)dismissKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

@end
