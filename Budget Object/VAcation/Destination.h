//
//  Destination.h
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Budget;

@interface Destination : NSObject
{
    NSString *country;
    NSMutableArray *transactions;
    Budget *theBudget;
}

- (void)createWithCountry:(NSString*)theCountry andBudget:(double) budgetAmount withExchangeRate:(double)theExchangeRate;
- (void)spendCash:(double)amount;
- (void)chargeCreditCard:(double)amount;
- (double)leftToSpend;

@end
