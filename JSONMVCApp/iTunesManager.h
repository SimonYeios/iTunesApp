//
//  iTunesManager.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/19/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iTunesManagerDelegate.h"
#import "iTunesCommunicatorDelegate.h"
@class iTunesCommunicator;
@interface iTunesManager : NSObject<iTunesCommunicatorDelegate>

@property(strong, nonatomic) iTunesCommunicator *communicator;
@property(weak, nonatomic) id <iTunesManagerDelegate> delegate;
-(void)fetchEntries;

@end
