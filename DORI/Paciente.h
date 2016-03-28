//
//  Paciente.h
//  
//
//  Created by Eric García on 27/05/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Doctor, Minitest;

@interface Paciente : NSManagedObject

@property (nonatomic, retain) NSString * cirugias;
@property (nonatomic, retain) NSString * direccion;
@property (nonatomic, retain) NSNumber * edad;
@property (nonatomic, retain) NSString * enfermedades;
@property (nonatomic, retain) NSString * medicacion;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSString * padecimiento;
@property (nonatomic, retain) NSString * referencia;
@property (nonatomic, retain) NSString * sanguineo;
@property (nonatomic, retain) NSNumber * sexo;
@property (nonatomic, retain) Doctor *doctor;
@property (nonatomic, retain) NSOrderedSet *minitests;
@end

@interface Paciente (CoreDataGeneratedAccessors)

- (void)insertObject:(Minitest *)value inMinitestsAtIndex:(NSUInteger)idx;
- (void)removeObjectFromMinitestsAtIndex:(NSUInteger)idx;
- (void)insertMinitests:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeMinitestsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInMinitestsAtIndex:(NSUInteger)idx withObject:(Minitest *)value;
- (void)replaceMinitestsAtIndexes:(NSIndexSet *)indexes withMinitests:(NSArray *)values;
- (void)addMinitestsObject:(Minitest *)value;
- (void)removeMinitestsObject:(Minitest *)value;
- (void)addMinitests:(NSOrderedSet *)values;
- (void)removeMinitests:(NSOrderedSet *)values;
@end
