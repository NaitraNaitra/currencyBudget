//
//  main.m
//  VAcation
//
//  Created by Maxi on 24/06/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Destination.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSString* appDataPath = @"/Users/maxi/Documents/Programming/VAcation/VAcation/AppData.plist";
        NSMutableDictionary *appDictionary = [[NSMutableDictionary alloc]initWithContentsOfFile:appDataPath];
        NSDictionary* europeDictionary = appDictionary[@"Europe"];
        NSDictionary* englandDictionary = appDictionary[@"England"];
        double europeBudget = 1000;
        double englandBudget = 2000;
        NSMutableDictionary* budgetsDictionary = appDictionary [@"Budgets"];
        if (budgetsDictionary){
            europeBudget = [budgetsDictionary[@"Europe"]doubleValue];
            englandBudget = [budgetsDictionary[@"England"]doubleValue];
        }
        else {
            NSNumber* europeBalance = @( europeBudget );
            NSNumber* englandBalance = @( englandBudget );
            budgetsDictionary = [[NSMutableDictionary alloc]initWithObjectsAndKeys:europeBalance,@"Europe",englandBalance,@"England", nil];
            appDictionary[@"Budgets"] = budgetsDictionary;
        }
        NSLog(@"You have $%.2f to spend in Europe", europeBudget);
        NSLog(@"You have $%.2f to spend in England", englandBudget);
        
        
        NSString* europeSymbol = [[NSString alloc] initWithFormat:@"%@", europeDictionary[@"Symbol"] ];
        
        NSString* englandSymbol =[[NSString alloc] initWithFormat:@"%@", englandDictionary[@"Symbol"]];
        
        
        
        
    
    //Destination *europe = [Destination new];
    NSString *europeText = [[NSString alloc] initWithFormat:@"%@", @"Europe"];
    Destination* europe = [[Destination alloc]initWithCountry:europeText andBudget:europeBudget withExchangeRate:1.250];
    
    
    //Destination *england = [Destination new];
    NSString *englandText = [[NSString alloc] initWithFormat:@"%@", @"England"];
    
    Destination* england = [[Destination alloc]initWithCountry:englandText andBudget:englandBudget withExchangeRate:1.500];
    
        for (int n=1; n < 2; n++)
    {
        double transaction = n*100.00;
        NSLog( @"Sending a $%.2f cash transaction", transaction );
        [europe spendCash:transaction];
        NSLog( @"Remaining budget $%.2f", [europe leftToSpend] );
        
        NSLog( @"Sending a $%.2f cash transaction", transaction );
        [england spendCash:transaction];
        NSLog( @"Remaining budget $%.2f", [england leftToSpend] );
    }
    
        [europe setExchangeRate:1.30];
        [england setExchangeRate:1.40];
    int n = 1;
    while (n < 4)
    {
        double transaction = n*100.00;
        NSLog( @"Sending a %@%.2f credit card transaction",europeSymbol, transaction );
        [europe chargeCreditCard:transaction];
        NSLog( @"Remaining budget $%.2f", [europe leftToSpend] );
        
        NSLog( @"Sending a %@%.2f credit card transaction",englandSymbol, transaction );
        [england chargeCreditCard:transaction];
        NSLog( @"Remaining budget $%.2f", [england leftToSpend] );
        
        n++;
        }
        NSNumber* europeBalance = @( [europe leftToSpend] );
        NSNumber* englandBalance = @( [england leftToSpend] );
        budgetsDictionary[@"Europe" ] = europeBalance;
                          budgetsDictionary[@"England" ] = englandBalance;
                                            [appDictionary writeToFile:appDataPath atomically:YES];
    
    }
    
    return 0;
}
