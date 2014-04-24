//
//  MTweets.m
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/22/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import "MTweets.h"
#import "MTweet.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"
#import  <AFNetworking/AFHTTPRequestOperationManager.h>

@implementation MTweets

@synthesize tweets = _tweets;

-(void) getTweets
{
    
    NSString * absoluteURL = @"http://www.pixel16.com/twitter/twitter_feed.php?screen_name=FillWerrell";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    [manager GET:absoluteURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"JSON RESPONSE:%@",operation.responseString);
        
        NSDictionary *jsonDict = @{@"tweets": responseObject};
        
        NSError *error = nil;
        
        MTweets * tweets = [MTLJSONAdapter modelOfClass:MTweets.class fromJSONDictionary:jsonDict error:&error];
        
        [self copy:tweets];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"TweetsDoneNotification" object:nil];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        NSLog(@"error: %@",  operation.responseString);
        
    }];
}

-(void) copy:(MTweets *) tweets
{
    self.tweets = tweets.tweets;
}

+ (NSValueTransformer *)tweetsJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[MTweet class]];
}


+ (NSDictionary*)JSONKeyPathsByPropertyKey{
    return @{
             @"tweets": @"tweets",
             };
}




@end
