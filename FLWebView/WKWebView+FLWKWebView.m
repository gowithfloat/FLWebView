//
//  WKWebView+FLWKWebView.m
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import "WKWebView+FLWKWebView.h"

@implementation WKWebView (FLWKWebView)

- (void) setDelegateViews:(UIView<WKNavigationDelegate,WKUIDelegate> *)delegateView
{
    self.navigationDelegate = delegateView;
    self.UIDelegate = delegateView;
}

@end