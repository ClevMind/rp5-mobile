//
//  _rp5_json.h
//  rp5_mobile
//
//  Created by ClevMind on 18.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "_rp5ViewController.h"

@interface _rp5_json : NSObject
@property   NSDictionary *DATA;
- (id)init;
- (NSDictionary*) getData: (NSString *) URL withObject: (_rp5ViewController*)view;
- (NSDictionary *) returnResult: (NSDictionary *) data;
@end
