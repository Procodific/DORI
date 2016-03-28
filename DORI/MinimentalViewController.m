//
//  MinimentalViewController.m
//  DORI
//
//  Created by Eric García on 27/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "MinimentalViewController.h"

#import "AppDelegate.h"
#import "Minitest.h"

@interface MinimentalViewController ()

@end

@implementation MinimentalViewController

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

- (IBAction)procesarExamen:(id)sender {
    
    // Suma de puntajes
    NSInteger puntaje_total = [_puntaje_1.text integerValue] + [_puntaje_2.text integerValue] + [_puntaje_3.text integerValue] + [_puntaje_4.text integerValue] + [_puntaje_5.text integerValue] + [_puntaje_6.text integerValue] + [_puntaje_7.text integerValue] + [_puntaje_8.text integerValue] + [_puntaje_9.text integerValue] +[_puntaje_10.text integerValue] + [_puntaje_11.text integerValue] + [_puntaje_12.text integerValue] + [_puntaje_13.text integerValue] + [_puntaje_14.text integerValue];
    
    // Captura de fecha
    NSDate *date = [NSDate date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    
    /**** Persistencia Minitest ****/
    AppDelegate *ad = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = ad.managedObjectContext;
    
    Minitest *minitest = (Minitest *) [NSEntityDescription insertNewObjectForEntityForName:@"Minitest" inManagedObjectContext:context];
    
    minitest.puntaje = [NSNumber numberWithInteger:puntaje_total];
    minitest.fecha = [dateFormatter stringFromDate:date];
    
    [_pacienteActual addMinitestsObject:minitest];
    
    NSString *puntaje = [[NSString alloc] initWithFormat:@"Su puntaje fue: %li", puntaje_total];
    UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Puntaje total" message:puntaje delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [error show];
    
    [context save:nil];
}
@end
