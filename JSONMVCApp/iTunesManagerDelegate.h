//
//  iTunesManagerDelegate.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/19/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol iTunesManagerDelegate <NSObject>
-(void)didReceiveEntries: (NSArray *)entries;
-(void)fetchingEntriesFailedWithError:(NSError *)error;
@end
