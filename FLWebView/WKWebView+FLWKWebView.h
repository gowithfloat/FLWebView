//
//  WKWebView+FLWKWebView.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. Shared under an MIT license. See license.md for details.
//

#import <WebKit/WebKit.h>
#import "FLWebViewProvider.h"

/*
 * This category extends WKWebView and conforms to the FLWebViewProvider protocol.
*/
@interface WKWebView (FLWKWebView) <FLWebViewProvider>

/*
 * Shorthand for setting WKUIDelegate and WKNavigationDelegate to the same class.
*/
- (void) setDelegateViews: (id <WKNavigationDelegate, WKUIDelegate>) delegateView;

@end