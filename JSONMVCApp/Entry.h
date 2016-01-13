//
//  Entry.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Entry : NSObject
@property(strong, nonatomic) NSString *albumName;
@property(strong, nonatomic) UIImage *albumImage;
@property(strong, nonatomic) NSString *albumPrice;
@property(strong, nonatomic) NSString *albumArtist;
@property(strong, nonatomic) NSDate *releaseDate;
@end
