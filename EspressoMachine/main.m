//
//  main.m
//  EspressoMachine
//
//  Created by John Carson on 9/1/16.
//  Copyright © 2016 John Carson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EspressoMachine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        EspressoMachine *machine = [[EspressoMachine alloc] init];
        Barista *Meg = [[Barista alloc] init];
        machine.delegate = Meg;
        [machine addBeans];
        [machine addWater];
        [machine heatWater];
        [machine makeEspresso];
        
        
        
        
        
        
        
    }
    return 0;
}
