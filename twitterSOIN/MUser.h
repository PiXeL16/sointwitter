//
//  MUser.h
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/22/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MUser : MTLModel<MTLJSONSerializing>

@property(copy, nonatomic) NSString * screenName;
@property(strong, nonatomic) NSURL * profileImageURL;



@end
