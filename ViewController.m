//
//  ViewController.m
//  Tweetings
//
//  Created by Andrea Jessup on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Twitter/Twitter.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;


@end

@implementation ViewController
@synthesize webView;

- (IBAction)loadTweets:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://twitter.com/andreajessup"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)handleTweetButtonTapped:(id)sender {
    TWTweetComposeViewController *tweetVC = [[TWTweetComposeViewController alloc] init];
    [tweetVC setInitialText:@"This tweet came from my Twitter app."];
    [self presentViewController:tweetVC animated:YES completion:NULL];
}
@end
