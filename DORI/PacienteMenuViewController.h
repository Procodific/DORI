//
//  PacienteMenuViewController.h
//  DORI
//
//  Created by Eric García on 25/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paciente.h"

@interface PacienteMenuViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *pacienteUILabel;

@property (strong, nonatomic) Paciente *pacienteActual;

@end
