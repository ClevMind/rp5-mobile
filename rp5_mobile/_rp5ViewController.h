//
//  _rp5ViewController.h
//  rp5_mobile
//
//  Created by ClevMind on 02.07.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h> //для NSObject и строк NSString
#import "_rp5_db.h"

@interface _rp5ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *town_name;
@property (weak, nonatomic) IBOutlet UILabel *temp;
@property (weak, nonatomic) IBOutlet UILabel *feel;
@property (weak, nonatomic) IBOutlet UILabel *feel_temp;
@property (weak, nonatomic) IBOutlet UILabel *archive;
@property _rp5_db *db;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *progress;

- (void)viewDidLoad;
- (void)fetchedData:(NSData *)responseData;

@end
