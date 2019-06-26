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
    NSMutableArray *transactions;
    Budget *theBudget;
}

@property (nonatomic, strong) NSString* country;
@property (readwrite) double exchangeRate;

- (id)initWithCountry: (NSString*)theCountry andBudget:(double) budgetAmount withExchangeRate: (double)theExchangeRate;

- (void)spendCash:(double)amount;
- (void)chargeCreditCard:(double)amount;
- (double)leftToSpend;

@end
