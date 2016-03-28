//
//  Minitest.h
//  
//
//  Created by Eric García on 27/05/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Paciente;

@interface Minitest : NSManagedObject

@property (nonatomic, retain) NSNumber * puntaje;
@property (nonatomic, retain) NSString * fecha;
@property (nonatomic, retain) Paciente *paciente;

@end
