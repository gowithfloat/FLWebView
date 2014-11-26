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

/*
 * Sets a given delegateView as the delegate for this web view.
*/
- (void) setDelegateViews: (UIView<WKNavigationDelegate,WKUIDelegate> *) delegateView
{
    self.navigationDelegate = delegateView;
    self.UIDelegate = delegateView;
}

/*
 * Returns this web view as a UIView.
*/
- (UIView *) getAsUIView
{
    return self;
}

/*
 * Getter for the active request. UIWebView has this, but WKWebView does not, so we add it here.
*/
- (NSURLRequest *) request
{
    return objc_getAssociatedObject(self, @selector(request));
}

/*
 * Setter for the active request.
 */
- (void) setRequest: (NSURLRequest *) request
{
    objc_setAssociatedObject(self, @selector(request), request, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

{
}

{
}

/*
 * This doesn't do anything, as there's no good analogue to scalesPagesToFit in WKWebView.
*/
- (void) setScalesPagesToFit: (BOOL) setPages
{
    return; // not supported in WKWebView
}

{
}

@end