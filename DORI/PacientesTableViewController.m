//
//  PacientesTableViewController.m
//  DORI
//
//  Created by Eric García on 24/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "PacientesTableViewController.h"

// Necesario para guardar con CoreData
#import "AppDelegate.h"
#import "NuevoPacienteViewController.h"
#import "PacienteMenuViewController.h"

@interface PacientesTableViewController ()

@end

@implementation PacientesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    if ([_doctorActual.pacientes count] == 0) {
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Sin pacientes" message:@"No existen pacientes, agregue con el botón en la barra de navegación superior" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [error show];
    }
    self.navigationController.navigationItem.leftBarButtonItem.title = @"Salir";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    _pacientes = [_doctorActual.pacientes array];
    
    NSString *sexo;
    if ([_doctorActual.sexo intValue] == 0) {
        sexo = @"del Dr.";
    } else {
        sexo = @"de la Dra";;
    }
    
    self.title = [[NSString alloc] initWithFormat:@"Pacientes %@ %@", sexo, _doctorActual.nombre];
    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [_pacientes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = (UITableViewCell *) [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [_pacientes[indexPath.row] nombre];
    
    return cell;
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"agregarPaciente"]) {
        NuevoPacienteViewController *dest = (NuevoPacienteViewController *) segue.destinationViewController;
        dest.doctorActual = _doctorActual;
    }
    else {
        if ([segue.identifier isEqualToString:@"verPaciente"]) {
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            if (indexPath) {
                PacienteMenuViewController *dest = (PacienteMenuViewController *) segue.destinationViewController;
                dest.pacienteActual = _pacientes[indexPath.row];
            }
        }
    }
}

- (IBAction)unwindToPacientes:(UIStoryboardSegue *)unwindSegue
{
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

@end
