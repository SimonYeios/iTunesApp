//
//  EntryBuilder.m
//  JSONMVCApp
//
//  Created by Venkatesh Jujjavarapu on 8/18/15.
//  Copyright (c) 2015 sitacorp. All rights reserved.
//

#import "EntryBuilder.h"
#import "Entry.h"

@implementation EntryBuilder
+(NSArray *)entriesFromJSON:(NSData *)objectNotation error:(NSError **)error

{
    NSError *localError =nil;
    
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    if(localError!=nil)
    {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *finalEntry = [[NSMutableArray alloc]init];
    
    NSDictionary *feed = [parsedObject objectForKey:@"feed"];
    
    NSArray *entries = [feed objectForKey:@"entry"];
    
    
    for(NSDictionary *dict in entries)
    {
        
        Entry *entry = [[Entry alloc]init];
        
        NSDictionary *title = [dict objectForKey:@"title"];
        
        [entry setAlbumName:[title objectForKey:@"label"]];
        
        NSArray *imImage = [dict objectForKey:@"im:image"];
        
        NSDictionary *imageDictionary = [imImage objectAtIndex:0];
        NSString *imageString = [imageDictionary objectForKey:@"label"];
        
        NSURL *imageURL = [NSURL URLWithString:imageString];
        
        NSData *data = [NSData dataWithContentsOfURL:imageURL];
        
        UIImage *image = [[UIImage alloc]initWithData:data];
        
        [entry setAlbumImage:image];
        
        NSDictionary *priceDict = [dict objectForKey:@"im:price"];
        
        NSString *priceStr = [priceDict objectForKey:@"label"];
        
        [entry setAlbumPrice:priceStr];
        
        
        
        
        [finalEntry addObject:entry];
       
    }
    
    
    return finalEntry;
    
    
    
    
    
}



@end
