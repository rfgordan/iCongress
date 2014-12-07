//
//  RepViewController.h
//  iCongress
//
//  Created by Robert Gordan on 12/3/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "SHK.h"
#import "constants.h"
#import "BillCell.h"


@interface RepViewController : UITableViewController
@property (nonatomic, weak) IBOutlet UIButton *button1;
@property (nonatomic, weak) IBOutlet UIButton *button2;
@property (nonatomic, weak) IBOutlet UIView *myContentView;
@property (nonatomic, weak) IBOutlet UILabel *myTextLabel;
-(IBAction) share;
@end
