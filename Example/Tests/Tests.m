//
//  FLWebViewTests.m
//  FLWebViewTests
//
//  Created by Steve Richey on 11/21/14.
//  Copyright (c) 2016 Float. Shared under an MIT license. See license.md for details.
//

@import XCTest;
@import FLWebView;

#define TEST_URL @"https://gowithfloat.com"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
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

