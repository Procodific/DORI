//
//  PacientesTableViewController.h
//  DORI
//
//  Created by Eric García on 24/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>
#import "Doctor.h"

@interface PacientesTableViewController : UITableViewController

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) UISearchController *searchController;
@property (strong, nonatomic) NSPredicate *searchPredicate;

// Doctor y sus pacientes
@property (strong, nonatomic) Doctor *doctorActual;
@property (strong, nonatomic) NSArray *pacientes;

@end
