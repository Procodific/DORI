//
//  Doctor.h
//  
//
//  Created by Eric García on 27/05/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Paciente;

@interface Doctor : NSManagedObject

@property (nonatomic, retain) NSString * contra;
@property (nonatomic, retain) NSNumber * edad;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSNumber * sexo;
@property (nonatomic, retain) NSString * usuario;
@property (nonatomic, retain) NSOrderedSet *pacientes;
@end

@interface Doctor (CoreDataGeneratedAccessors)

- (void)insertObject:(Paciente *)value inPacientesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromPacientesAtIndex:(NSUInteger)idx;
- (void)insertPacientes:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removePacientesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInPacientesAtIndex:(NSUInteger)idx withObject:(Paciente *)value;
- (void)replacePacientesAtIndexes:(NSIndexSet *)indexes withPacientes:(NSArray *)values;
- (void)addPacientesObject:(Paciente *)value;
- (void)removePacientesObject:(Paciente *)value;
- (void)addPacientes:(NSOrderedSet *)values;
- (void)removePacientes:(NSOrderedSet *)values;
@end
