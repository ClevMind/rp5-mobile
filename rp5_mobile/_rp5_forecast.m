//
//  _rp5_forecast.m
//  rp5_mobile
//
//  Created by ClevMind on 18.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5_forecast.h"
#define CURR_FORECAST_URL [NSURL URLWithString:@"http://ru1.rp5.ru/rp5android/wd.php?q=504532&lang=ru"]

@implementation _rp5_forecast
@synthesize JSON = _JSON;
@synthesize MAIN_VIEW = _MAIN_VIEW;

- (id)init
{
    self = [super init];
    if (self)
    {
        self.JSON = [_rp5_json new];
    }
    return self;
}

- (NSDictionary*) weatherNow:(_rp5ViewController*)view
{
    self.MAIN_VIEW = view;
    NSDictionary *aResult = [self.JSON getData:CURR_FORECAST_URL withObject:view];
    
    NSLog(@"RES:%@", [self.JSON.DATA objectForKey:@"city"]);
    return 0;
}
@end
