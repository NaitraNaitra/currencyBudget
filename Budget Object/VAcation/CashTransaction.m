//
//  CashTransaction.m
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "CashTransaction.h"
#import "Budget.h"

@implementation CashTransaction

-(id) initWithAmount:(double)theAmount forBudget:(Budget*)aBudget {
    if (self = [super initWithAmount:theAmount forBudget:aBudget]){
        name = @"Cash";
        
    }
    return self;
}



- (void) spend {
    [budget spendDollars:amount];
}

@end
