//
//  _rp5_db.h
//  rp5_mobile
//
//  Created by ClevMind on 01.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface _rp5_db : NSObject {
    sqlite3 *db;
}

- (NSArray*)Check;

@end
