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

- (void) spend {
    [budget spendDollars:amount];
}

@end
