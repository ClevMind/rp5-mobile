//
//  _rp5SettingsController.h
//  rp5_mobile
//
//  Created by ClevMind on 10.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _rp5SettingsController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *curr_city;
- (IBAction)changeCity:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *curr_lang;
- (IBAction)changeLang:(id)sender;
@property (weak, nonatomic) IBOutlet UINavigationItem *status_bar;
@property (weak, nonatomic) IBOutlet UIButton *units;
- (IBAction)changeUnits:(id)sender;

@end
