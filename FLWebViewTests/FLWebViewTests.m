//
//  FLWebViewTests.m
//  FLWebViewTests
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2014 Float Mobile Learning. Shared under an MIT license. See license.md for details.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
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
    XCTAssertTrue(true, @"dummy check failed!");
    
    // create a UI View that conforms to FLWebViewProvider
    UIView <FLWebViewProvider> *webView;
    
    // instantiate
    if (NSClassFromString(@"WKWebView")) {
        webView = [[WKWebView alloc] init];
    } else {
        webView = [[UIWebView alloc] init];
    }
    
    XCTAssertNotNil(webView, @"webview was instantiated but nil!");
    
    [webView loadRequestFromString: TEST_URL];
    
    XCTAssertNotNil([webView request], @"webview request was set but nil!");
    XCTAssertNotNil([webView URL], @"webview request was set but URL was nil!");
}
@end