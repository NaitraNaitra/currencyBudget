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

/*- (void) createTransaction:(double)theAmount forBudget:(Budget *)aBudget
{
    budget = aBudget;
    amount = @( theAmount );
}*/

-(id) initWithAmount:(double)theAmount forBudget:(Budget *)aBudget {
    if (self =[super init]) {
        budget = aBudget;
        amount = @(theAmount);
    }
    return self;
}

- (void) spend
{
    // fill in the method in subclasses
}

- (NSNumber*)returnAmount {
    return (amount);
}

@end
