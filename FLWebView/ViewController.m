//
//  ViewController.m
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import "ViewController.h"
#import "UIWebView+FLUIWebView.h"
#import "WKWebView+FLWKWebView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (NSClassFromString(@"WKWebView")) {
        _webView = [[WKWebView alloc] initWithFrame: self.view.bounds];
    } else {
        _webView = [[UIWebView alloc] initWithFrame: self.view.bounds];
    }
    
    [self.view addSubview: [self webView]];
    [self.view bringSubviewToFront: [self webView]];
    [[self webView] setDelegateViews: self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
