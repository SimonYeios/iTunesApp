//
//  iTunesCommunicatorDelegate.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol iTunesCommunicatorDelegate <NSObject>

-(void)receivedEntriesJSON:(NSData *)objectNotation;
-(void)fetchingEntriesFailedWithError:(NSError *)error;


@end
