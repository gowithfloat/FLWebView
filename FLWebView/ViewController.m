//
//  ViewController.m
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import "ViewController.h"
// Required for WKWebView calls to "see" our categories
#import "UIWebView+FLUIWebView.h"
#import "WKWebView+FLWKWebView.h"

@interface ViewController ()

@end

@implementation ViewController

/*
 * Called when the view has completed loading. Time to set up our WebView!
 */
- (void) viewDidLoad {
    [super viewDidLoad];
    
    // Check if WKWebView is available
    // If it is present, create a WKWebView. If not, create a UIWebView.
    
    if (NSClassFromString(@"WKWebView")) {
        _webView = [[WKWebView alloc] initWithFrame: self.view.bounds];
    } else {
        _webView = [[UIWebView alloc] initWithFrame: self.view.bounds];
    }
    
    [self.view addSubview: [self webView]];
    [[self webView] setDelegateViews: self];
    [self webView].autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self view].autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // Just to show *something* on load, we go to Google.
    
    [[self webView] loadRequestFromString:@"http://www.google.com"];
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) toInterfaceOrientation
{
    return YES;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - UIWebView Delegate Methods

- (BOOL) webView: (UIWebView *) webView shouldStartLoadWithRequest: (NSURLRequest *) request navigationType: (UIWebViewNavigationType) navigationType
{
    return [self shouldStartDecidePolicy: request];
}

- (void) webViewDidStartLoad: (UIWebView *) webView
{
    [self didStartNavigation];
}

- (void) webView: (UIWebView *) webView didFailLoadWithError: (NSError *) error
{
    [self failLoadOrNavigation: webView.request withError: error];
}

- (void) webViewDidFinishLoad: (UIWebView *) webView
{
    [self finishLoadOrNavigation: webView.request];
}

#pragma mark - WKWebView Delegate Methods

- (void) webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    decisionHandler([self shouldStartDecidePolicy: navigationAction.request]);
}

- (void) webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation
{
    [self didStartNavigation];
}

- (void) webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error
{
    
}

- (void) webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation
{
    webView.request = [NSURLRequest requestWithURL: webView.URL];
    
}

- (void) webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error
{
    [self failLoadOrNavigation: [NSURLRequest requestWithURL: webView.URL] withError: error];
}

- (void) webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    [self finishLoadOrNavigation: [NSURLRequest requestWithURL: webView.URL]];
}

#pragma mark - Shared Delegate Methods

- (BOOL) shouldStartDecidePolicy: (NSURLRequest *) request
{
    // do stuff
    
    return YES;
}

- (void) didStartNavigation
{
    // do stuff
}

- (void) failLoadOrNavigation: (NSURLRequest *) request withError: (NSError *) error
{
    // do stuff
}

- (void) finishLoadOrNavigation: (NSURLRequest *) request
{
    // do stuff
}

@end