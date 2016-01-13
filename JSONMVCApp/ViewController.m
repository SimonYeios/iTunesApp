//
//  ViewController.m
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import "ViewController.h"
#import "DetailCell.h"
#import "Entry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.estimatedRowHeight=140;
    self.tableView.rowHeight=UITableViewAutomaticDimension;
    // Do any additional setup after loading the view, typically from a nib.
    self.manager = [[iTunesManager alloc]init];
    
    self.manager.communicator = [[iTunesCommunicator alloc]init];
    
    self.manager.communicator.delegate = self.manager;
    
    self.manager.delegate = self;
    
    self.tableView.delegate = self;
    
    self.tableView.dataSource = self;
    
    
    [self.manager fetchEntries];
    
   
    
}



-(void)didReceiveEntries:(NSArray *)entries {
    
    self.entries = entries;
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
    
}

-(void)fetchingEntriesFailedWithError:(NSError *)error {
    
    NSLog(@"Error : %@, %@", error, [error localizedDescription]);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.entries.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailCell" forIndexPath:indexPath];
    if(!cell)
    {
        cell = [[DetailCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DetailCell"];
    }
    
    
    Entry *entry = self.entries[indexPath.row];
    
    cell.albumNameLabel.text = entry.albumName;
    
    cell.albumPriceLabel.text  = entry.albumPrice;
    
    cell.albumImageView.image = entry.albumImage;
    
    return cell;
    
}


-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
   // CGFloat rotation = CATransform3DMakeRotation((CGFloat)(0.5 * M_PI), 0.0, 0.7, 0.4);
    
    CATransform3D rotation = CATransform3DMakeRotation((0.5 * M_PI),0.0, 0.7, 0.4);
    
    rotation.m34 = 1.0 / -600;
    

    cell.layer.shadowColor = [[UIColor blackColor]CGColor];
    
    cell.layer.shadowOffset = CGSizeMake(10, 10);
    
    cell.alpha = 0;
    
    
    
    cell.layer.transform = rotation;
    
    cell.layer.anchorPoint = CGPointMake(0, 0.5);
    

    [UIView beginAnimations:@"rotation" context:NULL];
    [UIView setAnimationDuration:0.7];
    cell.layer.transform = CATransform3DIdentity;
    cell.alpha = 1;
    cell.layer.shadowOffset = CGSizeMake(0, 0);
    [UIView commitAnimations];

    
}


@end
