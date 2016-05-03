//
//  FLViewController.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2016 Float. Shared under an MIT license. See license.md for details.
//

@import UIKit;
@import WebKit;
@import FLWebView;

@interface FLViewController : UIViewController <UIWebViewDelegate, WKNavigationDelegate, WKUIDelegate>

// The main web view that is set up in the viewDidLoad method.
@property (nonatomic) UIView <FLWebViewProvider> *webView;

@end
