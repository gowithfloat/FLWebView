//
//  UIWebView+FLUIWebView.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FLWebViewProvider.h"

/*
 * This category extends UIWebView and conforms to the FLWebViewProvider protocol.
*/
@interface UIWebView (FLUIWebView) <FLWebViewProvider>

/*
 * Shorthand for setting UIWebViewDelegate to a class.
*/
- (void) setDelegateViews: (UIView<UIWebViewDelegate> *) delegateView;

@end