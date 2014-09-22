//
//  _rp5_json.m
//  rp5_mobile
//
//  Created by ClevMind on 18.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5_json.h"

@implementation _rp5_json
@synthesize DATA = _DATA;
- (id)init
{
    self = [super init];
    if (self)
    {
        //DATA = nil;
        
    }
    return self;
}

- (NSDictionary*) getData: (NSURL *) URL withObject: (_rp5ViewController*)view
{
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);

    dispatch_async(queue, ^{[NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:URL] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            NSLog(@"Error in JSON connection");
            exit(1);
        } else {
            NSError *localError = nil;
            _DATA = [NSJSONSerialization JSONObjectWithData:data options:0 error:&localError];
            
            if (localError != nil) {
                NSLog(@"Error in JSON ;");
                exit(1);
            }
            
            [self returnResult:_DATA];
            
        }
    }];
    });
                        //     ]});
    return 0;
}

- (NSDictionary *) returnResult: (NSDictionary *) data
{
     NSLog(@"RES3:%@", [data objectForKey:@"city"]);
    return data;
}
@end
