//
//  ViewController.h
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iTunesManager.h"
#import "iTunesCommunicator.h"
@interface ViewController : UIViewController<iTunesManagerDelegate, UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong, nonatomic) NSArray *entries;
@property(strong, nonatomic) iTunesManager *manager; 


@end

