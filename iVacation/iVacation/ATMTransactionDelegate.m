//
//  ATMTransactionDelegate.m
//  VAcation
//
//  Created by Maxi on 03/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "ATMTransactionDelegate.h"
#import "Transaction.h"
#import "Budget.h"

@implementation ATMTransactionDelegate

-(void) spend:(Transaction *)aTransaction {
    NSNumber *atmAmount = @([aTransaction.amount doubleValue] + 2.00);
    [aTransaction.budget spendDollars:atmAmount];
}



@end
