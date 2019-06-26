//
//  Destination.m
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Destination.h"
#import "CashTransaction.h"
#import "CreditCardTransaction.h"
#import "Budget.h"
#import "Transaction.h"

@implementation Destination

- (id)initWithCountry:(NSString *)theCountry andBudget:(double)budgetAmount withExchangeRate:(double)theExchangeRate
{
    if (self = [super init])
    {
        transactions = [[NSMutableArray alloc] initWithCapacity:10];
        theBudget = [[Budget alloc] initWithAmount:budgetAmount forDestination:self];
        self.exchangeRate = theExchangeRate;
        [self setCountry:theCountry];
        NSLog( @"I'm off to %@", theCountry );
    }
    return (self);
}


- (void)spendCash:(double)amount
{
    Transaction *aTransaction = [[CashTransaction alloc] initWithAmount:amount forBudget:theBudget];
    [transactions addObject:aTransaction];
    [aTransaction spend];
}

- (void)chargeCreditCard:(double)amount
{
    Transaction *aTransaction = [[CreditCardTransaction alloc] initWithAmount:amount forBudget:theBudget];
    [transactions addObject:aTransaction];
    [aTransaction spend];
}

- (double)leftToSpend
{
    return ([theBudget returnBalance]);
}

@end
