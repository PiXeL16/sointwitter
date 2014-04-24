//
//  MUser.m
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/22/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import "MUser.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"

@implementation MUser

@synthesize profileImageURL = _profileImageURL;
@synthesize screenName = _screenName;


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"screenName":@"name",
             @"profileImageURL":@"profile_image_url",
             };
}

+ (NSValueTransformer *)profileImageURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end
