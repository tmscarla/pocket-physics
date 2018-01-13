//
//  SBVelocitaViewController.m
//  Pocket Physics
//
//  Created by Tommaso Scarlatti on 20/11/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import "SBVelocitaViewController.h"

@interface SBVelocitaViewController ()

@end


@implementation SBVelocitaViewController

@synthesize textFieldMassa;
@synthesize textFieldRaggio;
@synthesize labelVelocitaKms;
@synthesize labelVelocitaKmh;


- (BOOL)shouldAutorotate {
    
    return NO;
}


- (void) calculate {
    float m;
    float r;
    float vKms;
    float vKmh;
    float g = 6.67428 * pow(10, -11);
    
    m = [self.textFieldMassa.text floatValue];
    r = [self.textFieldRaggio.text floatValue];
    
    vKms = sqrtf((2 * g * m) / r);
    vKmh = vKms * 3600;
    
    self.labelVelocitaKms.text = [NSString stringWithFormat:@"%.5f", vKms];
    self.labelVelocitaKmh.text = [NSString stringWithFormat:@"%.5f", vKmh];

}

- (IBAction)showResult:(id)sender {

    [self calculate];

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)dismissKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
