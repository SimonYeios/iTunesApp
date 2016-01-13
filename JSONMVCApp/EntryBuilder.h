//
//  EntryBuilder.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EntryBuilder : NSObject

+(NSArray *)entriesFromJSON:(NSData *)objectNotation error:(NSError **)error;
@end
