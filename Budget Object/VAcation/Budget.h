//
//  Budget.h
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Budget : NSObject {
    float exchangeRate;
    double budget;
    double exchangeTransaction;
}

- (void) createBudget: (double) aBudget withExchangeRate:(double)anExchangeRate;
- (void) spendDollars: (NSNumber*) dollars;
- (void) chargeForeignCurrency: (double)foreignCurrency;
- (double)returnBalance;

@end
