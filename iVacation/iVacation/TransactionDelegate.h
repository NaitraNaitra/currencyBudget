//
//  TransactionDelegate.h
//  VAcation
//
//  Created by Maxi on 03/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Transaction;

@protocol TransactionDelegate <NSObject>
@required
-(void) spend: (Transaction*) aTransaction;

@optional

-(void) transaction: (Transaction*) aTransaction
              spend:(double) anAmount;
@end
