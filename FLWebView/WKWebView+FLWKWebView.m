//
//  WKWebView+FLWKWebView.m
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import "WKWebView+FLWKWebView.h"
#import <objc/runtime.h>

@implementation WKWebView (FLWKWebView)

- (void) setDelegateViews: (UIView<WKNavigationDelegate,WKUIDelegate> *) delegateView
{
    self.navigationDelegate = delegateView;
    self.UIDelegate = delegateView;
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
    return self.URL;
}

- (void) setScalePagesToFit: (BOOL) setPages
{
    return; // not supported in WKWebView
}

- (void) setRequest: (NSURLRequest *) request
{
    objc_setAssociatedObject(self, @selector(request), request, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSURLRequest *) request
{
    return objc_getAssociatedObject(self, @selector(request));
}

@end