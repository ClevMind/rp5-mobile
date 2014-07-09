//
//  _rp5ViewController.h
//  rp5_mobile
//
//  Created by ClevMind on 02.07.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h> //для NSObject и строк NSString

@interface _rp5ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *town_name;
@property (weak, nonatomic) IBOutlet UILabel *temp;
- (void)viewDidLoad;
- (void)fetchedData:(NSData *)responseData;
@end
