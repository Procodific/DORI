//
//  HistorialClinicoViewController.m
//  DORI
//
//  Created by Eric García on 27/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "HistorialClinicoViewController.h"
#import "AppDelegate.h"

@interface HistorialClinicoViewController ()

@end

@implementation HistorialClinicoViewController

@synthesize sexoUISegmentedControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nombreUITextField.text = _pacienteActual.nombre;
    _direccionUITextField.text = _pacienteActual.direccion;
    sexoUISegmentedControl.selectedSegmentIndex = [_pacienteActual.sexo integerValue];
    _referenciaTextField.text = _pacienteActual.referencia;
    _padecimientoTextField.text = _pacienteActual.padecimiento;
    _sanguineoTextField.text = _pacienteActual.sanguineo;
    _enfermedadesTextField.text = _pacienteActual.enfermedades;
    _medicacionTextField.text = _pacienteActual.medicacion;
    _cirugiasTextField.text = _pacienteActual.cirugias;
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

- (IBAction)guardarCambios:(id)sender {
    AppDelegate *ad = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = ad.managedObjectContext;
    
    _pacienteActual.nombre = _nombreUITextField.text;
    _pacienteActual.direccion = _direccionUITextField.text;
    _pacienteActual.sexo = [NSNumber numberWithInteger:sexoUISegmentedControl.selectedSegmentIndex];
    _pacienteActual.referencia = _referenciaTextField.text;
    _pacienteActual.padecimiento = _padecimientoTextField.text;
    _pacienteActual.sanguineo = _sanguineoTextField.text;
    _pacienteActual.enfermedades = _enfermedadesTextField.text;
    _pacienteActual.medicacion = _medicacionTextField.text;
    _pacienteActual.cirugias = _cirugiasTextField.text;
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    _pacienteActual.edad = [f numberFromString:_edadUITextField.text];
    
    [context save:nil];
}
@end
