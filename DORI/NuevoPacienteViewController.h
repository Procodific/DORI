//
//  NuevoPacienteViewController.h
//  DORI
//
//  Created by Eric García on 25/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"

@interface NuevoPacienteViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nombreTextField;
@property (weak, nonatomic) IBOutlet UITextField *direccionTextField;
@property (weak, nonatomic) IBOutlet UITextField *edadTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sexoUISegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *referenciaTextField;
@property (weak, nonatomic) IBOutlet UITextField *padecimientoTextField;
@property (weak, nonatomic) IBOutlet UITextField *sanguineoTextField;
@property (weak, nonatomic) IBOutlet UITextField *enfermedadesTextField;
@property (weak, nonatomic) IBOutlet UITextField *medicacionTextField;
@property (weak, nonatomic) IBOutlet UITextField *cirugiasTextField;

// Doctor actual, loggeado
@property (strong, nonatomic) Doctor *doctorActual;
@property (weak, nonatomic) Doctor *doctorActual2;

- (IBAction)guardarPaciente:(id)sender;

@end
