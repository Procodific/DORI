//
//  Doctor.m
//  DORI
//
//  Created by Eric García on 25/05/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

#import "Doctor.h"
#import "Paciente.h"


@implementation Doctor

@dynamic contra;
@dynamic edad;
@dynamic nombre;
@dynamic sexo;
@dynamic usuario;
@dynamic pacientes;

- (void)addPacientesObject:(Paciente *)value {
    NSMutableOrderedSet *tempSet = [NSMutableOrderedSet orderedSetWithOrderedSet: self.pacientes];
    [tempSet addObject:value];
    self.pacientes = tempSet;
}

@end
