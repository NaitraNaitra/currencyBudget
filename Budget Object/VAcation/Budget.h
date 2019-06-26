//
//  Budget.h
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Destination;

@interface Budget : NSObject {
    float exchangeRate;
    double budget;
    double exchangeTransaction;
}

@property (nonatomic) Destination *destination;

- (id) initWithAmount: (double) aBudget forDestination: (Destination*) aDestination;
- (void) spendDollars: (NSNumber*) dollars;
- (void) chargeForeignCurrency: (double)foreignCurrency;
- (double)returnBalance;

@end
