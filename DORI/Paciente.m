//
//  Paciente.m
//  
//
//  Created by Eric García on 27/05/15.
//
//

#import "Paciente.h"
#import "Doctor.h"
#import "Minitest.h"


@implementation Paciente

@dynamic cirugias;
@dynamic direccion;
@dynamic edad;
@dynamic enfermedades;
@dynamic medicacion;
@dynamic nombre;
@dynamic padecimiento;
@dynamic referencia;
@dynamic sanguineo;
@dynamic sexo;
@dynamic doctor;
@dynamic minitests;

- (void)addMinitestsObject:(Minitest *)value {
    NSMutableOrderedSet *tempSet = [NSMutableOrderedSet orderedSetWithOrderedSet: self.minitests];
    [tempSet addObject:value];
    self.minitests = tempSet;
}

@end
