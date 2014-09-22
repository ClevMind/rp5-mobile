//
//  _rp5_db.m
//  rp5_mobile
//
//  Created by ClevMind on 01.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5_db.h"

@interface _rp5_db ()

@end

@implementation _rp5_db

- (NSArray*) Check
{
    
    @try {
        NSFileManager *fileMgr = [NSFileManager defaultManager];
        NSString *dbPath = [NSString stringWithFormat:@"%@rp5_base.sqlite", [[NSBundle mainBundle] bundleURL]];
       BOOL success = [fileMgr fileExistsAtPath:dbPath];
        
        if(!success)
        {
            NSLog(@"Cannot locate database file '%@'.", dbPath);
        }
        if(!(sqlite3_open([dbPath UTF8String], &db) == SQLITE_OK))
        {
            NSLog(@"An error has occured.");
        }
        const char *sql = "SELECT City, Lang, Units FROM settings";
        sqlite3_stmt *sqlStatement;
        if(sqlite3_prepare(db, sql, -1, &sqlStatement, NULL) != SQLITE_OK)
        {
            NSLog(@"Problem with prepare statement");
        }
        NSArray *info;
        while (sqlite3_step(sqlStatement)==SQLITE_ROW) {
            //NSLog(@"%@", [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,0)]);
            info = [NSArray arrayWithObjects:[NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,0)], [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,1)], [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,2)], nil];
           /* WineList *MyWine = [[WineList alloc]init];
             MyWine.wineId = sqlite3_column_int(sqlStatement, 0);
             MyWine.wine = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,1)];
             MyWine.rating = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 2)];
             const char *raw = sqlite3_column_blob(sqlStatement, 3);
             int rawLen = sqlite3_column_bytes(sqlStatement, 3);
             NSData *data = [NSData dataWithBytes:raw length:rawLen];
             MyWine.photo = [[UIImage alloc] initWithData:data];
             [wineArray addObject:MyWine];*/
        }
        // NSLog(@"TEST.%@", [info objectAtIndex:0]);
        sqlite3_close(db);
        return info;
        
        
       /* NSFileManager *filemgr = [NSFileManager defaultManager];
        NSString *dbPath = [NSString stringWithFormat:@"%@rp5_base.sqlite", [[NSBundle mainBundle] bundleURL]];
        const char *dbpath = [dbPath UTF8String];
        NSLog(@"###%@", [[NSBundle mainBundle] pathForResource:@"rp5_base" ofType:@"sqlite"]);
        
        if ([filemgr fileExistsAtPath: dbPath ] == NO)
        {
            
            if (sqlite3_open(dbpath, &db) == SQLITE_OK)
            {
                //=========================================

                BOOL success;
                NSFileManager *fileManager = [NSFileManager defaultManager];
                NSError *error;
                NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
                NSString *documentsDirectory = [paths objectAtIndex:0];
                NSString *writableDBPath = [documentsDirectory stringByAppendingPathComponent:@"rp5_base.sqlite"];
                success = [fileManager fileExistsAtPath:writableDBPath];
                NSLog(@"!!!%@", documentsDirectory);
                // The writable database does not exist, so copy the default to the appropriate location.
                if(!success)
                {
                    NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"rp5_base.sqlite"];
                    success = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
                    if (!success) {
                        NSLog(@"Failed moving database... %@",[error localizedDescription]);
                    }
                }
                
                
                
                //=========================================
                
                char *errMsg;
                const char *sql_stmt = "CREATE TABLE IF NOT EXISTS settings(CITY TEXT, LANG TEXT, UNITS INT)";
                
                if (sqlite3_exec(db, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
                {
                   // status.text = @"Failed to create table";
                    NSLog(@"Ошибка в создании таблицы!");
                }
                
                sqlite3_close(db);
                
            } else {
                NSLog(@"Ошибка в открытии таблицы!");
            }
        } else {
            NSLog(@"YEAPP BITCH");
             NSArray *info;
            if (sqlite3_open(dbpath, &db) == SQLITE_OK)
            {
                const char *sql = "SELECT City, Lang, Units FROM settings";
                sqlite3_stmt *sqlStatement;
                if(sqlite3_prepare(db, sql, -1, &sqlStatement, NULL) != SQLITE_OK)
                {
                    NSLog(@"Problem with prepare statement");
                }
                while (sqlite3_step(sqlStatement)==SQLITE_ROW) {
                //NSLog(@"%@", [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,0)]);
                info = [NSArray arrayWithObjects:[NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,0)], [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,1)], [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,2)], nil];
                WineList *MyWine = [[WineList alloc]init];
                 MyWine.wineId = sqlite3_column_int(sqlStatement, 0);
                 MyWine.wine = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,1)];
                 MyWine.rating = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 2)];
                 const char *raw = sqlite3_column_blob(sqlStatement, 3);
                 int rawLen = sqlite3_column_bytes(sqlStatement, 3);
                 NSData *data = [NSData dataWithBytes:raw length:rawLen];
                 MyWine.photo = [[UIImage alloc] initWithData:data];
                 [wineArray addObject:MyWine];
                }
            }
            // NSLog(@"TEST.%@", [info objectAtIndex:0]);
           // return info;
        }*/
    
        
    }@catch (NSException *exception) {
        NSLog(@"An exception occured: %@", [exception reason]);
    }
    
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

@end
