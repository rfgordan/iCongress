//
//  FirstView.m
//  iCongress
//
//  Created by Robert Gordan on 11/20/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

NSString* address;
NSString* city;
NSString* state;
NSString* zip;

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    //assign input for address
    if([textField.placeholder isEqualToString:@"Address"])
    {
        address = textField.text;
        NSLog(@"address: %@\n", address);
    }
    else if([textField.placeholder isEqualToString:@"City"])
    {
        city = textField.text;
    }
    else if([textField.placeholder isEqualToString:@"State"])
    {
        state = textField.text;
    }
    else if([textField.placeholder isEqualToString:@"Zip"])
    {
        zip = textField.text;
    }
    
}
@end
