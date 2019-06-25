//
//  Budget.m
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Budget.h"

@implementation Budget

/*- (void)createBudget:(double)aBudget withExchangeRate:(double)anExchangeRate
{
    exchangeRate = anExchangeRate;
    budget = aBudget;
}*/

-(id) initWithAmount:(double)aBudget withExchangeRate:(double)anExchangeRate {
    if (self = [super init]) {
        exchangeRate = anExchangeRate;
        budget = aBudget;
        
    }
    return self;
}




- (void) spendDollars:(NSNumber*)dollars
{
    budget -= [dollars doubleValue];
}

- (void) chargeForeignCurrency:(double)foreignCurrency
{
    exchangeTransaction = foreignCurrency * exchangeRate;
    budget -= exchangeTransaction;
}

- (double)returnBalance
{
    return (budget);
}

@end

