//
//  CashTransaction.m
//  Budget Object
//
//  Created by Maxi on 21/06/2019.
//  Copyright © 2019 Kowalski Software. All rights reserved.
//

#import "CashTransaction.h"
#import "Budget.h"

@implementation CashTransaction
- (void) spend {
    [self trackSpending:[amount doubleValue]];
    [budget spendDollars:amount];
    
}
@end
