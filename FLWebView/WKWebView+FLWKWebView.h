//
//  WKWebView+FLWKWebView.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import <WebKit/WebKit.h>
#import "FLWebViewProvider.h"

@interface WKWebView (FLWKWebView) <FLWebViewProvider>

- (void) setDelegateViews: (UIView<WKNavigationDelegate, WKUIDelegate> *) delegateView;

@end