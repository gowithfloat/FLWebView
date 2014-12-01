//
//  ViewController.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. Shared under an MIT license. See license.md for details.
//

// Needed for UIViewController, UIWebViewDelegate, and UIView
#import <UIKit/UIKit.h>
// Needed for WKNavigationDelegate and WKUIDelegate
#import <WebKit/WebKit.h>
// Used to define the webView property below
#import "FLWebViewProvider.h"

/**
 * This is the view controller for the main interface.
 * It also acts as a delegate for the web view.
 */
@interface ViewController : UIViewController <UIWebViewDelegate, WKNavigationDelegate, WKUIDelegate>

// The main web view that is set up in the viewDidLoad method.
@property (nonatomic) UIView <FLWebViewProvider> *webView;

@end
