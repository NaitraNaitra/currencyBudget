//
//  Destination+ATM.m
//  VAcation
//
//  Created by Maxi on 03/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Destination+ATM.h"
#import "Transaction.h"
#import "ATMTransactionDelegate.h"
@implementation Destination (ATM)
-(void) useAtm:(double)amount {
    ATMTransactionDelegate *aTransactionDelegate = [[ATMTransactionDelegate alloc] init];
    
    Transaction *aTransaction = [[Transaction alloc]initWithAmount:amount forBudget:theBudget];
    aTransaction.delegate = aTransactionDelegate;
    [transactions addObject:aTransaction];
    [aTransaction spend];
}
@end
