//
//  CreditCardTransaction.m
//  Budget Object
//
//  Created by Maxi on 21/06/2019.
//  Copyright © 2019 Kowalski Software. All rights reserved.
//

#import "CreditCardTransaction.h"
#import "Budget.h"
@implementation CreditCardTransaction

-(void) spend {
    [super trackSpending:[amount doubleValue]];
    [budget chargeForeignCurrency:[amount doubleValue]];
}
@end
