//
//  UIWebView+FLUIWebView.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FLWebViewProvider.h"

@interface UIWebView (FLUIWebView) <FLWebViewProvider>

- (void) setDelegatViews: (UIView<UIWebViewDelegate> *) delegateView;

@end