//
//  NuevoPacienteViewController.m
//  DORI
//
//  Created by Eric García on 25/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "NuevoPacienteViewController.h"

#import "Paciente.h"
#import "AppDelegate.h"

@interface NuevoPacienteViewController ()

@end

@implementation NuevoPacienteViewController

@synthesize sexoUISegmentedControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)guardarPaciente:(id)sender {
    AppDelegate *ad = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = ad.managedObjectContext;
    
    Paciente *paciente = (Paciente *) [NSEntityDescription insertNewObjectForEntityForName:@"Paciente" inManagedObjectContext:context];
    
    paciente.nombre = _nombreTextField.text;
    paciente.direccion = _direccionTextField.text;
    paciente.sexo = [NSNumber numberWithInteger:sexoUISegmentedControl.selectedSegmentIndex];
    paciente.referencia = _referenciaTextField.text;
    paciente.padecimiento = _padecimientoTextField.text;
    paciente.sanguineo = _sanguineoTextField.text;
    paciente.enfermedades = _enfermedadesTextField.text;
    paciente.medicacion = _medicacionTextField.text;
    paciente.cirugias = _cirugiasTextField.text;
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    paciente.edad = [f numberFromString:_edadTextField.text];
    
    [_doctorActual addPacientesObject:paciente];
    
    [context save:nil];
}
@end
