//
//  TweetDetailViewController.m
//  twitterSOIN
//
//  Created by Christopher Jimenez on 4/29/14.
//  Copyright (c) 2014 SOIN. All rights reserved.
//

#import "TweetDetailViewController.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

@interface TweetDetailViewController ()

@end

@implementation TweetDetailViewController
@synthesize tweet = _tweet;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tweetTextLabel.text = self.tweet.text;
    
    [self.tweetImageView setImageWithURL:self.tweet.user.profileImageURL];
    
    self.tweetDateLabel.text = self.tweet.createdAt;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
