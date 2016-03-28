//
//  RegistroViewController.h
//  DORI
//
//  Created by Eric García on 23/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RegistroViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nombreTextField;
@property (weak, nonatomic) IBOutlet UITextField *usuarioTextField;
@property (weak, nonatomic) IBOutlet UITextField *edadTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sexoUISegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *contraTextField;

- (IBAction)guardarDoctor:(id)sender;

@end
