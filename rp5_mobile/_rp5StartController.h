//
//  _rp5StartController.h
//  rp5_mobile
//
//  Created by ClevMind on 12.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIViewController.h>
#import "_rp5ViewController.h"
#import "_rp5SettingsController.h"

@interface _rp5StartController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *dynamicView;
@property (weak, nonatomic) IBOutlet UITabBar *tab_bar_top;
@property (weak, nonatomic) IBOutlet UITabBar *tab_bar_bottom;
@end
