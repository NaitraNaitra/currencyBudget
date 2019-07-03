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

- (id)initWithAmount:(double)theAmount forBudget:(Budget *)aBudget
{
    if (self = [super init])
    {
        self.budget = aBudget;
        self.amount = @( theAmount );
        
    }
    return (self);
}

- (void) spend
{
    if (self.delegate){
        [self.delegate spend:self];
    }
}

- (NSNumber*)returnAmount {
    return (_amount);
}

@end
