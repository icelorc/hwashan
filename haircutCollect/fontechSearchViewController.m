//
//  fontechSearchViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/24/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechSearchViewController.h"

@interface fontechSearchViewController ()

@end

@implementation fontechSearchViewController

@synthesize webView = _webView;

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
    NSString *urlAddress = @"https://www.google.com.tw/?gws_rd=cr&ei=JQ1BUo6SBcqukgXfpoHgDQ#q=Flux+Collection+Hair";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj1 = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
