//
//  DetailViewController.h
//  iCongress
//
//  Created by Robert Gordan on 11/20/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

