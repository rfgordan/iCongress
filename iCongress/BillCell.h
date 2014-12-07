//
//  BillCell.h
//  iCongress
//
//  Created by Robert Gordan on 12/3/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol BillCellDelegate <NSObject>
- (void)buttonOneActionForItemText:(NSString *)itemText :(UITableViewCell*) cell;
- (void)buttonTwoActionForItemText:(NSString *)itemText :(UITableViewCell*) cell;
- (void)cellDidOpen:(UITableViewCell *)cell;
- (void)cellDidClose:(UITableViewCell *)cell;
@end

@interface BillCell : UITableViewCell
@property NSString *itemText;
@property (nonatomic, weak) id <BillCellDelegate> delegate;
- (void)openCell;

@end


