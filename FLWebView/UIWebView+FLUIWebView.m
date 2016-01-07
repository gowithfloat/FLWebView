//
//  UIWebView+FLUIWebView.m
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. Shared under an MIT license. See license.md for details.
//

#import "UIWebView+FLUIWebView.h"

@implementation UIWebView (FLWebView)

/*
 * Set any delegate view that implements UIWebViewDelegate.
 * FLWKWebView has a comparable method that looks for its own delegates.
 * Since this method is defined in FLWebViewProvider, we can call it in our view controller
 * no matter which web view was used.
*/
- (void) setDelegateViews: (id <UIWebViewDelegate>) delegateView
{
    [self setDelegate: delegateView];
}

/*
 * Same implementation as FLWKWebView.
*/
- (void) loadRequestFromString: (NSString *) urlNameAsString
{
    [self loadRequest: [NSURLRequest requestWithURL:[NSURL URLWithString: urlNameAsString]]];
}

/*
 * The current URL is stored within the request property.
 * WKWebView has this available as a property, so we add it to UIWebView here.
*/
- (NSURL *) URL
{
    return [[self request] URL];
}

/*
 * Simple way to implement WKWebView's JavaScript handling in UIWebView.
 * Just evaluates the JavaScript and passes the result to completionHandler, if it exists.
 * Since this is defined in FLWebViewProvider, we can call this method regardless of the web view used.
*/
- (void) evaluateJavaScript: (NSString *) javaScriptString completionHandler: (void (^)(id, NSError *)) completionHandler
{
    NSString *string = [self stringByEvaluatingJavaScriptFromString: javaScriptString];
    
    if (completionHandler) {
        completionHandler(string, nil);
    }
}

/*
 * WKWebView has nothing comparable to scalesPagesToFit, so we use this method instead.
 * Here, we just update scalesPagesToFit. In FLWKWebView, nothing happens.
*/
- (void) setScalesPagesToFit: (BOOL) setPages
{
    self.scalesPageToFit = setPages;
}

@end
