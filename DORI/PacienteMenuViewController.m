//
//  PacienteMenuViewController.m
//  DORI
//
//  Created by Eric García on 25/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "PacienteMenuViewController.h"
#import "HistorialClinicoViewController.h"
#import "MinimentalViewController.h"
#import "ResultadosTableViewController.h"

@interface PacienteMenuViewController ()

@end

@implementation PacienteMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated {
    _pacienteUILabel.text = _pacienteActual.nombre;
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"verHistorialClinico"]) {
        MinimentalViewController *dest = (MinimentalViewController *) segue.destinationViewController;
        dest.pacienteActual = _pacienteActual;
    }
    else
        if ([segue.identifier isEqualToString:@"crearPrueba"]) {
            HistorialClinicoViewController *dest = (HistorialClinicoViewController *) segue.destinationViewController;
            dest.pacienteActual = _pacienteActual;
        }
        else
            if ([segue.identifier isEqualToString:@"verResultados"]) {
                ResultadosTableViewController *dest = (ResultadosTableViewController *) segue.destinationViewController;
                dest.paciente = _pacienteActual;
            }
}

- (IBAction)unwindToMainMenuPaciente:(UIStoryboardSegue *)unwindSegue
{
}

@end
