//
//  FLWebViewProvider.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * This class defines methods that FLUIWebView and FLWKWebView should implement in
 * order to work with FLBrowserViewController.
 */
@protocol FLWebViewProvider <NSObject>

- (void) setDelegateViews: (UIViewController *) delegateView;

- (UIView *) getAsUIView;

- (NSURLRequest *) getRequest;

- (void) loadRequest: (NSURLRequest *) request;

- (BOOL) getIsLoading;

- (BOOL) canGoBack;

@end