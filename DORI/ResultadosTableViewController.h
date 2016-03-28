//
//  ResultadosTableViewController.h
//  DORI
//
//  Created by Eric García on 27/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Paciente.h"
#import "Minitest.h"

@interface ResultadosTableViewController : UITableViewController

@property(strong, nonatomic) Paciente *paciente;
@property(strong, nonatomic) NSArray *minitests;

@end
