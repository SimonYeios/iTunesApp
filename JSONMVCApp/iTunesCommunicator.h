//
//  iTunesCommunicator.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol iTunesCommunicatorDelegate;

@interface iTunesCommunicator : NSObject


@property(weak, nonatomic) id<iTunesCommunicatorDelegate> delegate;

-(void)fetchData; 
@end
