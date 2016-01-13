//
//  iTunesManager.m
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/19/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import "iTunesManager.h"
#import "EntryBuilder.h"
#import "iTunesCommunicator.h"
@implementation iTunesManager

-(void)fetchEntries {
    
    
    [self.communicator fetchData];
    
    
    
}

-(void)fetchingEntriesFailedWithError:(NSError *)error {
    [self.delegate fetchingEntriesFailedWithError:error];
}


#pragma mark - iTunesCommunicatorDelegate
-(void)receivedEntriesJSON:(NSData *)objectNotation {
    
    NSError *error =nil;
    
    NSArray *entries = [EntryBuilder entriesFromJSON:objectNotation error: &error];
    
    if(error!=nil)
    {
        [self.delegate fetchingEntriesFailedWithError:error];
    }
    else {
        
        [self.delegate didReceiveEntries:entries];
    }
    
    
    
}





@end
