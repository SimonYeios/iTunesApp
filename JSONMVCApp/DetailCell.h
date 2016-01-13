//
//  DetailCell.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/19/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *albumNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumPriceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *albumImageView;

@end
