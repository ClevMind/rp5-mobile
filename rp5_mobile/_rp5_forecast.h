//
//  _rp5_forecast.h
//  rp5_mobile
//
//  Created by ClevMind on 18.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "_rp5_json.h"
#import "_rp5ViewController.h"

@interface _rp5_forecast : NSObject
@property _rp5_json *JSON;
@property _rp5ViewController *MAIN_VIEW;

- (id)init;
- (NSDictionary*) weatherNow:(_rp5ViewController*)view;
@end
