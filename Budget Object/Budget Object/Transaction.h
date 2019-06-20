//
//  Transaction.h
//  Budget Object
//
//  Created by Maxi on 20/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {cash,charge} transactionType;

@interface Transaction : NSObject

{
    transactionType type;
    NSNumber *amount;
}

- (void) createTransaction: (double) theAmount ofType: (transactionType) aType;
- (NSNumber *) returnAmount;
- (transactionType) returnType;
@end
