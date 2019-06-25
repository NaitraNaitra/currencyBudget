//
//  CreditCardTransaction.m
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "CreditCardTransaction.h"
#import "Budget.h"

@implementation CreditCardTransaction

-(id) initWithAmount:(double)theAmount forBudget:(Budget *)aBudget {
    if (self = [super initWithAmount:theAmount forBudget:aBudget]){
        name = @"Credit card";
        
    }
    return self;
}
- (void)spend
{
    [budget chargeForeignCurrency:[amount doubleValue]];
}

@end
