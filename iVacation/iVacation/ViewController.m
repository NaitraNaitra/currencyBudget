//
//  ViewController.m
//  iVacation
//
//  Created by Maxi on 03/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import "ViewController.h"
#import "Destination.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString* europeText =[[NSString alloc] initWithFormat: @"%@", @"Europe"];
    europe = [[Destination alloc]initWithCountry:europeText andBudget:1000.00 withExchangeRate:1.25];
    NSString* balanceFieldText = [[NSString alloc]initWithFormat:@".2f", [europe leftToSpend]];
    balanceFieldText = balanceFieldText;
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)spendDollars:(id)sender {
    NSLog(@"Sending a %.2f cash transaction",[_transactionField.text floatValue]);
    [europe spendCash:[_transactionField.text doubleValue]];
    _balanceField.text = [[NSString alloc] initWithFormat: @"%.2f",[europe leftToSpend]];
}

- (IBAction)chargeCreditCard:(id)sender {
        NSLog(@"Sending a %.2f credit card transaction",[_transactionField.text floatValue]);
        [europe chargeCreditCard:[_transactionField.text doubleValue]];
        _balanceField.text = [[NSString alloc] initWithFormat: @"%.2f",[europe leftToSpend]];


}
@end
