
//
//  main.m
//  Comand line
//
//  Created by Maxi on 13/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Budget.h"

//@implementation is the function prototype
@implementation Budget

- (void)createBudget:(double)aBudget withExchangeRate:(double)anExchangeRate
{
    exchangeRate = anExchangeRate;
    budget = aBudget;
}

- (void) spendDollars:(NSNumber*)dollars
{
    budget -= [dollars doubleValue];
    NSLog( @"Converting %.2f US dollars into foreign currency leaves $%.2f", [dollars doubleValue], budget );
}

- (void) chargeForeignCurrency:(double)foreignCurrency
{
    exchangeTransaction = foreignCurrency * exchangeRate;
    budget -= exchangeTransaction;
    NSLog( @"Charging %.2f in foreign currency leaves $%.2f", foreignCurrency, budget );
}

@end