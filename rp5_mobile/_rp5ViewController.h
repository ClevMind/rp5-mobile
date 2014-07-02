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
- (IBAction)selectTown:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *town;
@property (weak, nonatomic) IBOutlet UILabel *user_town;
@property (copy, nonatomic) NSString *userName;
@end
