//
//  _rp5AppDelegate.h
//  rp5_mobile
//
//  Created by ClevMind on 02.07.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface _rp5AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end

@interface rp5 : NSObject
{
    float     x, y;
    float     width;
    float     height;
    BOOL      isFilled;
}
- (void) Show;
@end
