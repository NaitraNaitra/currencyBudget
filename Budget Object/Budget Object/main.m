
//
//  main.m
//  Comand line
//
//  Created by Maxi on 13/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "budget.h"
#import "Transaction.h"
#import "CreditCardTransaction.h"
#import "CashTransaction.h"
int main(int argc, const char * argv[])
{
    
    Budget *europeBudget = [Budget new];
    [europeBudget createBudget:1000.00 withExchangeRate:1.2500];
    Budget *englandBudget = [Budget new];
    [englandBudget createBudget:2000.00 withExchangeRate:1.5000];
    
    NSMutableArray *transactions = [[NSMutableArray alloc] initWithCapacity:10];
    Transaction *aTransaction;
    for (int n = 1; n < 2; n++) {
        aTransaction = [CashTransaction new];
        [aTransaction createTransaction:n*100 forBudget:europeBudget];
        
        [transactions addObject:aTransaction];
        aTransaction = [CashTransaction new];
        [aTransaction createTransaction:n*100 forBudget:englandBudget];
        [transactions addObject:aTransaction];
    }
    
    int n =1;
    while (n < 4) {
        
        aTransaction = [CreditCardTransaction new];
        
        [aTransaction createTransaction:n*100 forBudget:englandBudget];
        [transactions addObject:aTransaction];
        n++;
    }
    
    
    for (Transaction *aTransaction in transactions)
    {
        [aTransaction spend];
    }
    
    
    return 0;
}

