//
//  SBPianoInclinatoViewController.m
//  Pocket Physics
//
//  Created by Tommaso Scarlatti on 22/11/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import "SBPianoInclinatoViewController.h"

@interface SBPianoInclinatoViewController ()

@end

@implementation SBPianoInclinatoViewController

@synthesize textFieldMassa;
@synthesize textFieldAttrito;
@synthesize textFieldAcc;
@synthesize textFieldAngolo;
@synthesize labelTensione;
@synthesize imageViewPiano;

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
	// Do any additional setup after loading the view.
    imageViewPiano.image = [UIImage imageNamed:@"pianoinclinatonull.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calculate {
    
    float ang, att, m, fatt, n, p, px, fapp;
    float acc = 0;
    
    ang = [self.textFieldAngolo.text floatValue];
    acc = [self.textFieldAcc.text floatValue];
    att = [self.textFieldAttrito.text floatValue];
    m = [self.textFieldMassa.text floatValue];
    
    p = m * 9.81;
    fapp = m * acc;
    px = p * sin(ang) - fapp * cos(ang);
    n = p * cos(ang) - fapp * sin(ang)  ;
    
    
    fatt = -px;
    
    
    self.labelTensione.text = [NSString stringWithFormat:@"%.3f N", fatt];
    
    
    
    if (acc == 0) {
    
        imageViewPiano.image = [UIImage imageNamed:@"pianoinclinatonull.png"];
    }
    
    else if (acc < 0 ) {
        
        imageViewPiano.image = [UIImage imageNamed:@"pianoinclinatosx.png"];
    
    
    }
    
    else if (acc > 0) {
        
        imageViewPiano.image = [UIImage imageNamed:@"pianoinclinatodx.png"];
    
    }
    
    
    


    
}

- (IBAction)showResult:(id)sender {

    [self calculate];

}

- (IBAction)dismissKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

@end
