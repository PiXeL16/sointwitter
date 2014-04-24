//
//  MTweets.h
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/22/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MTweets : MTLModel<MTLJSONSerializing>

@property(strong , nonatomic) NSArray * tweets;

-(void) getTweets;

-(void) copy:(MTweets *) tweets;

@end
