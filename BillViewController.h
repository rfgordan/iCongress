//
//  BillViewController.h
//  iCongress
//
//  Created by Robert Gordan on 12/5/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BillViewController : UIViewController
@property IBOutlet UILabel* billSponsor;
@property IBOutlet UILabel* billDate;
@property IBOutlet UILabel* billVoteCount;
@property IBOutlet UILabel* billSummary;
@property IBOutlet UILabel* billName;
//@property DCBill* bill;
@end
