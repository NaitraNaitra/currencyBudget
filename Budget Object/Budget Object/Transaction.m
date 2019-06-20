//
//  Transaction.m
//  Budget Object
//
//  Created by Maxi on 20/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (void) createTransaction:(double)theAmount ofType:(transactionType)aType {
    type = aType;
    amount = @( theAmount );
}

- (NSNumber *) returnAmount {
    return amount;
}

-(transactionType) returnType {
    return type;
};


@end
