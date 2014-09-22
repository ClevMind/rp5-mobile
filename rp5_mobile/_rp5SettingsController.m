//
//  _rp5SettingsController.m
//  rp5_mobile
//
//  Created by ClevMind on 10.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5SettingsController.h"
#import "_rp5_db.h"

@interface _rp5SettingsController ()

@end

@implementation _rp5SettingsController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    _rp5_db *db = [_rp5_db new];
    NSArray * Info = [db Check];
    [self.curr_city setTitle:[NSString stringWithFormat:@"%@", [Info objectAtIndex:0]] forState:UIControlStateNormal];
    [self.curr_lang setTitle:[NSString stringWithFormat:@"%@", [Info objectAtIndex:1]] forState:UIControlStateNormal];
    NSLog(@"%@", [NSString stringWithFormat:@"%@", [Info objectAtIndex:2]] );
    if([[Info objectAtIndex:2]  isEqualToString:@"0"]) {
        [self.units setTitle:@"Метрические" forState:UIControlStateNormal];
    } else {
       [self.units setTitle:@"Британские" forState:UIControlStateNormal];
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)changeCity:(id)sender {
    NSLog(@"YES");
}
- (IBAction)changeLang:(id)sender {
}
- (IBAction)changeUnits:(id)sender {
}
@end
