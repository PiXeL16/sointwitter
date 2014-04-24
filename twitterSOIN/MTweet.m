//
//  MTweet.m
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/22/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import "MTweet.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"

@implementation MTweet

@synthesize text = _text;
@synthesize user = _user;

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"text":@"text",
             @"user":@"user",
             };
}

+ (NSValueTransformer *)userJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[MUser class]];
}

@end
