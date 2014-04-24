//
//  MTweet.h
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/22/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MUser.h"
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MTweet : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic) NSString * text;
@property (strong , nonatomic) MUser * user;

@end
