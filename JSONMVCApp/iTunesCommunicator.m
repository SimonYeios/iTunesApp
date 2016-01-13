//
//  iTunesCommunicator.m
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import "iTunesCommunicator.h"
#import "iTunesCommunicatorDelegate.h"
@implementation iTunesCommunicator


-(void)fetchData {
    
    NSString *urlAsString = @"https://itunes.apple.com/us/rss/topalbums/limit=25/json";
    
    NSURL *url = [[NSURL alloc]initWithString:urlAsString];

    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc]initWithURL:url] queue:[[NSOperationQueue alloc]init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
       
        if(connectionError){
            [self.delegate fetchingEntriesFailedWithError:connectionError];
        }
        else {
            [self.delegate receivedEntriesJSON:data];
        }
        ;
    }];
    
    
    
}

@end
