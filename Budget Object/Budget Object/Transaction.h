//
//  Transaction.h
//  Budget Object
//
//  Created by Maxi on 20/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Budget;

@interface Transaction : NSObject

{
    Budget *budget;
    NSNumber *amount;
}

- (void) createTransaction: (double) theAmount forBudget: (Budget*) aBudget;
-(void) spend;
-(void) trackSpending: (double) theAmount;


@end
