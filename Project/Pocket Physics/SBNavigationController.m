//
//  SBNavigationController.m
//  Pocket Physics
//
//  Created by Federico Baldi Lanfranchi on 29/01/14.
//  Copyright (c) 2014 Federico Baldi Lanfranchi. All rights reserved.
//

#import "SBNavigationController.h"

@interface SBNavigationController ()

@end

@implementation SBNavigationController

-(BOOL)shouldAutorotate {
    
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskPortrait;
    
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
     self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:nil];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
