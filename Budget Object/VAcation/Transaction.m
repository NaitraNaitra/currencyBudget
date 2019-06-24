//
//  Transaction.m
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Transaction.h"
#import "Budget.h"

@implementation Transaction

- (void) createTransaction:(double)theAmount forBudget:(Budget *)aBudget
{
    budget = aBudget;
    amount = @( theAmount );
}

- (void) spend
{
    // fill in the method in subclasses
}

- (NSNumber*)returnAmount {
    return (amount);
}

@end
