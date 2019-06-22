//
//  Transaction.m
//  Budget Object
//
//  Created by Maxi on 20/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Transaction.h"
#import "Budget.h"
@implementation Transaction

- (void) createTransaction:(double)theAmount forBudget:(Budget *)aBudget {
    budget = aBudget;
    amount = @( theAmount );
}

-(void) spend {}

-(void) trackSpending:(double)theAmount{
    NSLog(@"You are about to spend another %.2f", theAmount);
}




@end
