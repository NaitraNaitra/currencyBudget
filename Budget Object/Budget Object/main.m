
//
//  main.m
//  Comand line
//
//  Created by Maxi on 13/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "budget.h"

int main(int argc, const char * argv[])
{
    
    
    double numberEuros = 100;
    NSNumber *englandDollarTransaction = @100.00;
    double numberPounds = 100;
    //two transactions NSMutableArray will be looking for.
    NSNumber *europeDollarTransaction = @100.00;
    NSNumber *europeDollarTransaction2 = @200.00;
    
    
    NSMutableArray *europeTransactions = [[NSMutableArray alloc] initWithCapacity:1];
    [europeTransactions addObject:europeDollarTransaction];
    [europeTransactions addObject:europeDollarTransaction2];

    
    //Sends a messege to Budget object to make europe.Budget
    Budget *europeBudget = [Budget new];
    //send the data to europeBudget(. lol)exchangeRate + budget.
    [europeBudget createBudget:1000.00 withExchangeRate:1.2500];
    
    
    for (NSNumber *aTransaction in europeTransactions){
        [europeBudget spendDollars:aTransaction];
    }
    [europeBudget chargeForeignCurrency:numberEuros];
    
    /* Takes each entry in the array and COPIES it to the variable that you have declared
     */
    
    
    
    Budget *englandBudget = [Budget new];
    [englandBudget createBudget:2000.00 withExchangeRate:1.5000];
    [englandBudget spendDollars:englandDollarTransaction];
    [englandBudget chargeForeignCurrency:numberPounds];
    
    return 0;
}

