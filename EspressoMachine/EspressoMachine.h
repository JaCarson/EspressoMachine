//
//  EspressoMachine.h
//  EspressoMachine
//
//  Created by John Carson on 9/1/16.
//  Copyright © 2016 John Carson. All rights reserved.
//

#ifndef EspressoMachine_h
#define EspressoMachine_h
#import "Delegate.h"

@class EspressoMachine;


@protocol EspressoMachineDelegate <NSObject>
@optional
- (void)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine;
@required
- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine;

@end

@interface EspressoMachine : NSObject



@property BOOL hasWater;
@property BOOL hasBEans;
@property BOOL waterIsHot;
@property (weak) id <EspressoMachineDelegate> delegate;

-(void) makeEspresso;
-(void) heatWater;
-(void) addBeans;
-(void) addWater;


@end



@interface Barista : NSObject <EspressoMachineDelegate>

@end







#endif /* EspressoMachine_h */

