//
//  _rp5_network.m
//  rp5_mobile
//
//  Created by ClevMind on 26.08.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5_network.h"
#import "Reachability.h"

@implementation _rp5_network
- (bool)checkConnection {
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus internetStatus = [reachability currentReachabilityStatus];
    if (internetStatus == NotReachable) {
       return false;
        //NSLog(@"FALSE");
    } else {
        return true;
       // NSLog(@"TRUE");
    }
}
@end
