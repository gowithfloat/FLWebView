//
//  UIWebView+FLUIWebView.m
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import "UIWebView+FLUIWebView.h"

@implementation UIWebView (FLWebView)

- (void) setDelegatViews:(UIView<UIWebViewDelegate> *)delegateView
{
    self.delegate = delegateView;
}

@end