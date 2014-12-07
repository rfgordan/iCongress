//
//  FirstView.h
//  iCongress
//
//  Created by Robert Gordan on 11/20/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface FirstView : UIViewController <UITextFieldDelegate>
@property IBOutlet UIButton* findButton;

-(void)textFieldDidEndEditing:(UITextField *)textField;
-(IBAction)addressLookup:(id)sender;

@end
