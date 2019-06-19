
//
//  main.m
//  Comand line
//
//  Created by Maxi on 13/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>


//@ interface with Budget Object Inherits NSObjects stuff- and has a few methods that can take those variables created in the Budget object

@interface Budget : NSObject {
    float exchangeRate;
    double budget;
    double exchangeTransaction;
}

- (void) createBudget: (double) aBudget withExchangeRate:(double)anExchangeRate;
- (void) spendDollars: (NSNumber*)dollars;
- (void) chargeForeignCurrency: (double)foreignCurrency;

@end

