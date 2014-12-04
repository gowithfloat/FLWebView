//
//  FLWebViewProvider.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. Shared under an MIT license. See license.md for details.
//

#import <Foundation/Foundation.h>

/*
 * This class defines methods that FLUIWebView and FLWKWebView should implement in
 * order to work within our ViewController.
*/
@protocol FLWebViewProvider <NSObject>

/*
 * Return the active NSURLRequest of this webview.
 * The methodology is a bit different between UIWebView and WKWebView.
 * Defining it here one way helps to ensure we'll implement it in the same way in our categories.
*/
@property (nonatomic, strong) NSURLRequest *request;

/*
 * Returns the active NSURL. Again, this is a bit different between the two web views.
*/
@property (nonatomic, strong) NSURL *URL;

/*
 * Assign a delegate view for this webview.
*/
- (void) setDelegateViews: (id) delegateView;

/*
 * Load an NSURLRequest in the active webview.
*/
- (void) loadRequest: (NSURLRequest *) request;

/*
 * Convenience method to load a request from a string.
*/
- (void) loadRequestFromString: (NSString *) urlNameAsString;

/*
 * Returns true if it is possible to go back, false otherwise.
*/
- (BOOL) canGoBack;

/*
 * UIWebView has stringByEvaluatingJavaScriptFromString, which is synchronous.
 * WKWebView has evaluateJavaScript, which is asynchronous.
 * Since it's far easier to implement the latter in UIWebView, we define it here and do that.
*/
- (void) evaluateJavaScript: (NSString *) javaScriptString completionHandler: (void (^)(id, NSError *)) completionHandler;

@end