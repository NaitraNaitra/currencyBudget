//
//  Budget.m
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Budget.h"
#import "Destination.h"

@implementation Budget

- (id)initWithAmount:(double)aBudget forDestination:(Destination*)aDestination
{
    if (self = [super init])
    {
        self.destination = aDestination;
        budget = aBudget;
    }
    return (self);
}

- (void) spendDollars:(NSNumber*)dollars
{
    budget -= [dollars doubleValue];
}

- (void) chargeForeignCurrency:(double)foreignCurrency
{
    exchangeTransaction = foreignCurrency * [self.destination exchangeRate];
    budget -= exchangeTransaction;
}

- (double)returnBalance
{
    return (budget);
}

@end

