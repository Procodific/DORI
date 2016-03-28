//
//  RegistroViewController.m
//  DORI
//
//  Created by Eric García on 23/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "RegistroViewController.h"

#import "AppDelegate.h"
#import "Doctor.h"
#import "Paciente.h"

@interface RegistroViewController ()

@end

@implementation RegistroViewController

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

- (IBAction)guardarDoctor:(id)sender {
    AppDelegate *ad = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = ad.managedObjectContext;
    
    Doctor *doctor = (Doctor *) [NSEntityDescription insertNewObjectForEntityForName:@"Doctor" inManagedObjectContext:context];
    
    doctor.nombre = _nombreTextField.text;
    doctor.usuario = _usuarioTextField.text;
    doctor.contra = _contraTextField.text;
    doctor.sexo = [NSNumber numberWithInteger:sexoUISegmentedControl.selectedSegmentIndex];
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    doctor.edad = [f numberFromString:_edadTextField.text];
    
    [context save:nil];
    //[ad saveContext];
}
@end
