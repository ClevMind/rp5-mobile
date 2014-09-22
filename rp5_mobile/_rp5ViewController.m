//
//  _rp5ViewController.m
//  rp5_mobile
//
//  Created by ClevMind on 02.07.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5ViewController.h"
#import "_rp5_network.h"
#import "_rp5_alert.h"
#import "_rp5_forecast.h"


#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
#define URL [NSURL URLWithString:@"http://ru1.rp5.ru/rp5android/wd.php?q=504532&lang=ru"] //2

@implementation _rp5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.progress startAnimating];
    
    //dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    _rp5_network *NET = [_rp5_network new];
    _rp5_alert *ALERT = [_rp5_alert new];
    self.db = [_rp5_db new];
    
    
    NSString * message = @"Hello World!";
    
    bool test = [NET checkConnection];
    if(test == true) {
        NSLog(@"INTERNET");
        
        
        _rp5_forecast *forecast = [_rp5_forecast new];
        NSDictionary * test =  [forecast weatherNow:self];
         NSLog(@"RESULT:%@", [test objectForKey:@"city"]);
        [self.progress performSelectorOnMainThread:@selector(stopAnimating) withObject:nil waitUntilDone:YES];
    }
    else {
        NSLog(@"NO_INTERNET");
        [ALERT showMessage:message];
    }
    
              /* dispatch_async(kBgQueue, ^{
                   NSData* data = [NSData dataWithContentsOfURL:
                                   URL];
                   [self performSelectorOnMainThread:@selector(fetchedData:)
                                          withObject:data waitUntilDone:YES];
               });*/
    
    
    
    
    
    

}

- (void)viewDidUnload {
    
}

- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          
                          options:kNilOptions
                          error:&error];
    
    if(error && ![error isKindOfClass:[NSNull class]]) {
        NSLog(@"Ошибка в подключении!Проверьте соединение");
        exit(1);
    }
    
    NSString* city = [json objectForKey:@"city"]; //2
    
    NSLog(@"weather: %@", city); //3
    
    self.town_name.text = [NSString stringWithFormat:@"Погода в %@", city];
    self.temp.text = [json objectForKey:@"t"];
//     NSLog(@"YES%@", [json objectForKey:@"t"]); //3
    

    NSArray *feel_like = [json objectForKey:@"feel"];
    

    if(feel_like && ![feel_like isKindOfClass:[NSNull class]]) {
        self.feel_temp.text = [NSString stringWithFormat:@"%@", feel_like];
    } else {
        NSLog(@"YES"); //3
        [self.feel setAlpha:0.0f];



    }
    
    NSString *Archive = [json objectForKey:@"archive"]; 
    self.archive.text = Archive;
    
    NSLog(@"weather2: %@",     self.temp); //3
    
    NSArray * Info = [self.db Check];
    
    NSLog(@"%@", [Info objectAtIndex:0]);


}
@end