//
//  MinimentalViewController.h
//  DORI
//
//  Created by Eric García on 27/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paciente.h"

@interface MinimentalViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *diaUITextField;
@property (weak, nonatomic) IBOutlet UITextField *fechaUITextField;
@property (weak, nonatomic) IBOutlet UITextField *mesUITextField;
@property (weak, nonatomic) IBOutlet UITextField *estacionUITextField;
@property (weak, nonatomic) IBOutlet UITextField *yearUITextField;
@property (weak, nonatomic) IBOutlet UITextField *lugarUITextField;
@property (weak, nonatomic) IBOutlet UITextField *plantaUITextField;
@property (weak, nonatomic) IBOutlet UITextField *ciudadUITextField;
@property (weak, nonatomic) IBOutlet UITextField *provinciaUITextField;
@property (weak, nonatomic) IBOutlet UITextField *nacionUITextField;

// PUNTAJES
@property (weak, nonatomic) IBOutlet UITextField *puntaje_1;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_2;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_3;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_4;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_5;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_6;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_7;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_8;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_9;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_10;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_11;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_12;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_13;
@property (weak, nonatomic) IBOutlet UITextField *puntaje_14;

@property(strong, nonatomic) Paciente *pacienteActual;
- (IBAction)procesarExamen:(id)sender;

@end
