//
//  HistorialClinicoViewController.h
//  DORI
//
//  Created by Eric García on 27/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paciente.h"

@interface HistorialClinicoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nombreUITextField;
@property (weak, nonatomic) IBOutlet UITextField *direccionUITextField;
@property (weak, nonatomic) IBOutlet UITextField *edadUITextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sexoUISegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *referenciaTextField;
@property (weak, nonatomic) IBOutlet UITextField *padecimientoTextField;
@property (weak, nonatomic) IBOutlet UITextField *sanguineoTextField;
@property (weak, nonatomic) IBOutlet UITextField *enfermedadesTextField;
@property (weak, nonatomic) IBOutlet UITextField *medicacionTextField;
@property (weak, nonatomic) IBOutlet UITextField *cirugiasTextField;

@property (strong, nonatomic) Paciente *pacienteActual;

- (IBAction)guardarCambios:(id)sender;

@end
