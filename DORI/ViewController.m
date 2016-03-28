//
//  ViewController.m
//  DORI
//
//  Created by Eric García on 23/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "ViewController.h"

#import "AppDelegate.h"
#import "PacientesTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ingresar:(id)sender {
    NSString *usuario = _usuarioTextField.text;
    NSString *contra = _contraTextField.text;
    
    AppDelegate *ad = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = ad.managedObjectContext;
    
    // Preparando Query!
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Doctor"];
    fetchRequest.predicate = [NSPredicate predicateWithFormat:@"usuario = %@ AND contra = %@", usuario, contra];
    
    NSArray *doctores = [context executeFetchRequest:fetchRequest error:nil];
    
    NSInteger n = [doctores count];
    
    // Si solo hay una respuesta (no hay repeticion de datos)
    if (n > 0 && n < 2) {
        // Reset de campos de login
        _usuarioTextField.text = nil;
        _contraTextField.text = nil;
        
        _doctorLoggeado = doctores[0];
        
        // Ir a la siguiente vista
        [self performSegueWithIdentifier:@"ingresar" sender:self];
    }
    else { // No existe usuario o hay repetición de datos
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"¡Login fallido!" message:@"Error de inicio de sesión.\nVerifica que el usuario o contraseña sea correcto" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        // Reset de campos de login
        _usuarioTextField.text = nil;
        _contraTextField.text = nil;
        
        [error show];
    }
}

// Mandar datos a tabla de Pacientes
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"ingresar"]) {
        PacientesTableViewController *destinationController = (PacientesTableViewController *) segue.destinationViewController;
        destinationController.doctorActual = _doctorLoggeado;
    }
}

// Regresar a esta vista
- (IBAction)unwindToMainView:(UIStoryboardSegue *)unwindSegue
{
}

@end
