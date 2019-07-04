//
//  ViewController.h
//  iVacation
//
//  Created by Maxi on 03/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Destination;
@interface ViewController : UIViewController
{
    Destination     *europe;
}
@property (weak, nonatomic) IBOutlet UITextField *transactionField;
@property (weak, nonatomic) IBOutlet UILabel *balanceField;
- (IBAction)spendDollars:(id)sender;

- (IBAction)chargeCreditCard:(id)sender;

@end

