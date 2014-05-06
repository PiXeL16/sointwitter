//
//  TweetDetailViewController.h
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/29/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTweet.h"

@interface TweetDetailViewController : UIViewController

@property (strong, nonatomic) MTweet * tweet;
@property (weak, nonatomic) IBOutlet UILabel *tweetTextLabel;
@property (weak, nonatomic) IBOutlet UIImageView *tweetImageView;
@property (weak, nonatomic) IBOutlet UILabel *tweetDateLabel;

@end
