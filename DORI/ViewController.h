//
//  ViewController.h
//  DORI
//
//  Created by Eric García on 23/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usuarioTextField;
@property (weak, nonatomic) IBOutlet UITextField *contraTextField;
@property (weak, nonatomic) NSDictionary *login;

// Doctor loggeado
@property (strong, nonatomic) Doctor *doctorLoggeado;

- (IBAction)ingresar:(id)sender;

@end

