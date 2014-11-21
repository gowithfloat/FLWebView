//
//  ViewController.h
//  FLWebView
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "FLWebViewProvider.h"

@interface ViewController : UIViewController

@property (nonatomic) UIView <FLWebViewProvider> *webView;

@end