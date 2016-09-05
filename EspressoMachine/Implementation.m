//
//  Implementation.m
//  EspressoMachine
//
//  Created by John Carson on 9/4/16.
//  Copyright © 2016 John Carson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EspressoMachine.h"

@implementation EspressoMachine

- (void) makeEspresso {

    if (self.hasBEans){
        
        if (self.hasWater){
            
            
           [self.delegate espressoMachineDidFinishMakingEspresso:(self)];
            
            
        }
    }
    
    
    
}
- (void) heatWater {
    self.waterIsHot = true;
    [self.delegate espressoMachineWaterHasBecomeHot:(self)];
    
    
}
- (void) addBeans {
    self.hasBEans = true;
    
}
- (void) addWater {
    self.hasWater = true;
    
}

@end

@implementation Barista

- (void)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine {
    NSLog(@"WATER IS HOT!\n");
    
}
- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine {
    
    NSLog (@"Your coffee is ready!\n");

}





@end
