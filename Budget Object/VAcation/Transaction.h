//
//  Transaction.h
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TransactionDelegate.h"
@class Budget;


@interface Transaction : NSObject
{
    NSString *name;
    //Budget *budget;
    //NSNumber *amount;
}

- (id)initWithAmount:(double) theAmount forBudget: (Budget*)aBudget;
- (void) spend;
//- (NSNumber*) returnAmount;

@property (nonatomic) Budget *budget;
@property (nonatomic) id<TransactionDelegate> delegate;
@property (nonatomic,readwrite) NSNumber *amount;


@end
