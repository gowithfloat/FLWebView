//
//  FLWebViewTests.m
//  FLWebViewTests
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <WebKit/WebKit.h>
#import "FLWebViewProvider.h"
#import "ViewController.h"
#import "UIWebView+FLUIWebView.h"
#import "WKWebView+FLWKWebView.h"

#define TEST_URL @"http://www.floatlearning.com"

@interface FLWebViewTests : XCTestCase

@end

@implementation FLWebViewTests

- (void) testExample
{
    // dummy check
    XCTAssertTrue(true);
    
    // create a UI View that conforms to FLWebViewProvider
    UIView <FLWebViewProvider> *webView;
    
    // instantiate
    if (NSClassFromString(@"WKWebView")) {
        webView = [[WKWebView alloc] init];
    } else {
        webView = [[UIWebView alloc] init];
    }
    
    XCTAssertNotNil(webView);
    
    [webView loadRequestFromString: TEST_URL];
    
    XCTAssertNotNil([webView request]);
    XCTAssertNotNil([webView URL]);
}
@end