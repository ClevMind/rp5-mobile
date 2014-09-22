//
//  _rp5_alert.m
//  rp5_mobile
//
//  Created by ClevMind on 26.08.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5_alert.h"

@implementation _rp5_alert
- (void)showMessage:(id)Message {
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"OK Dailog"
                                                     message:@"This is OK dialog"
                                                    delegate:self
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles: nil];
    [alert addButtonWithTitle:@"GOO"];
    [alert show];
}
@end
