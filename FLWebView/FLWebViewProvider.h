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
 * order to work within our ViewController.
 */
@protocol FLWebViewProvider <NSObject>

/*
@property (nonatomic, strong) NSURLRequest *request;
@property (nonatomic, strong) NSURL *URL;
 * Assign a delegate view for this webview.
 */
- (void) setDelegateViews: (UIViewController *) delegateView;

/*
 * Returns this as a UIView object, which can be useful for setting properties inherited from UIView.
 */
- (UIView *) getAsUIView;

/*
 * Return the active NSURLRequest of this webview.
 */
- (NSURLRequest *) getRequest;

/*
 * Load an NSURLRequest in the active webview.
 */
- (void) loadRequest: (NSURLRequest *) request;

/*
 * Convenience method to load a request from a string.
 */
- (void) loadRequestFromString: (NSString *) urlNameAsString;

/*
 * Returns true if loading, false otherwise.
 */
- (BOOL) getIsLoading;

/*
 * Returns true if it is possible to go back, false otherwise.
 */
- (BOOL) canGoBack;

@end