//
//  UIWebView+FLUIWebView.m
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import "UIWebView+FLUIWebView.h"

@implementation UIWebView (FLWebView)

- (void) setDelegatViews:(UIView<UIWebViewDelegate> *)delegateView
{
    self.delegate = delegateView;
}

- (UIView *) getAsUIView
{
    return self;
}

- (NSURLRequest *) getRequest
{
    return self.request;
}

- (BOOL) getIsLoading
{
    return self.isLoading;
}

- (NSURL *) getCurrentURL
{
    return self.request.URL;
}

- (void) evaluateJavaScript: (NSString *) javaScriptString completionHandler: (void (^)(id, NSError *)) completionHandler;
{
    NSString *string = [self stringByEvaluatingJavaScriptFromString: javaScriptString];
    
    if (completionHandler) {
        completionHandler(string, nil);
    }
}

- (void) setScalesPageToFit: (BOOL) setPages
{
    self.scalesPageToFit = setPages;
}

@end