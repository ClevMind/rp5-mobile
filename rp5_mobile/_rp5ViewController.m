//
//  _rp5ViewController.m
//  rp5_mobile
//
//  Created by ClevMind on 02.07.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5ViewController.h"

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
#define kLatestKivaLoansURL [NSURL URLWithString:@"http://ru1.rp5.ru/rp5android/wd.php?q=504532"] //2

@interface _rp5ViewController ()

@end

@implementation _rp5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_async(kBgQueue, ^{
        NSData* data = [NSData dataWithContentsOfURL:
                kLatestKivaLoansURL];
        [self performSelectorOnMainThread:@selector(fetchedData:)
                               withObject:data waitUntilDone:YES];
    });
}

- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          
                          options:kNilOptions
                          error:&error];
    
    NSArray* city = [json objectForKey:@"city"]; //2
    
    NSLog(@"weather: %@", city); //3
    
    self.town_name.text = [NSString stringWithFormat:@"Погода в %@", city];
    self.temp.text = [json objectForKey:@"t"];
    
    // 1) Get the latest loan
    /*  NSDictionary* loan = [latestLoans objectAtIndex:0];
     
     // 2) Get the funded amount and loan amount
     NSNumber* fundedAmount = [loan objectForKey:@"city"];
     NSNumber* loanAmount = [loan objectForKey:@"t"];
     float outstandingAmount = [loanAmount floatValue] -
     [fundedAmount floatValue];
     
     // 3) Set the label appropriately
     self.label.text = [NSString stringWithFormat:@"Latest loan: %@from %@ needs another $%.2f to pursue their entrepreneural dream",
     [loan objectForKey:@"name"],
     [(NSDictionary*)[loan objectForKey:@"location"]
     objectForKey:@"country"],
     outstandingAmount];*/
}

@end

