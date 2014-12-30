[FLWebView](https://github.com/floatlearning/FLWebView/) [![Build Status](https://travis-ci.org/floatlearning/FLWebView.svg?branch=master)](https://travis-ci.org/floatlearning/FLWebView)
=========

<p align="center"><a href="http://floatlearning.com/"><img src="https://avatars0.githubusercontent.com/u/590014" alt="Float Mobile Learning"></a></p>

*Note: This repository was written in Objective-C. A Swift version is [available here](https://github.com/floatlearning/FLWebView-Swift).*

This is an example Xcode project demonstrating how to use [WKWebView](https://developer.apple.com/library/ios/documentation/WebKit/Reference/WKWebView_Ref/index.html) in iOS 8 with a [UIWebView](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIWebView_Class/index.html#//apple_ref/doc/uid/TP40006950) fallback for earlier versions of iOS. A full discussion of this code is available [here](http://floatlearning.com/2014/12/one-webview-to-rule-them-all/). Basically, we created a [protocol](http://iosdevelopertips.com/objective-c/the-basics-of-protocols-and-delegates.html) that unifies the functionality we'd like to have in a `WebView`, and then created [categories](http://macdevelopertips.com/objective-c/objective-c-categories.html) that ensure we have the proper methods in our `UIWebView` and `WKWebView` classes.

These are used in the [ViewController](./FLWebView/ViewController.m) `viewDidLoad` method to create a web view and add it to the active view. The code [checks for `WKWebKit`](https://github.com/floatlearning/FLWebView/blob/master/FLWebView/ViewController.m#L29) and, if present, uses `WKWebView`. If it's not there, it defaults to `UIWebView`.

# Usage

This is an example project but you should be able to build and test it with little setup. Obviously, as this is an iOS project the following steps apply to OS X. Assuming you have [Ruby](https://www.ruby-lang.org/) you can install `homebrew` if you don't have it already (just enter this in the terminal):

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then you can install xctool, Facebook's neat open source Xcode build tool:

```
brew install xctool
```

After that, you can run the `test.sh` script to build and test:

```
sh test.sh
```

There you go! Of course, you can this in Xcode, but this setup is great if you want to do some continuous integration, as `Travis` already has `xctool` installed by default.

# Notes

If you're getting code signing errors with an Objective-C project in `Travis`, make sure that your build script specifies `-sdk iphonesimulator` *and* `-test-sdk iphonesimulator`. Also, if your `.travis.yml` file targets the script you're using locally (in our case, `.travis.yml` specifies `script: sh test.sh`) it makes the debug process a bit simpler.

# Tests

As the goal of this project was not to create an example of good iOS testing, the tests for this repository are very minimal and largely serve largely to verify that we can build and deploy the application without issue. There are some tests to verify that we can instantiate a web view, but these are not particularly robust. You can find good information on unit testing in iOS from Apple's iOS Developer Library [here](https://developer.apple.com/library/ios/samplecode/UnitTests/Listings/ReadMe_txt.html#//apple_ref/doc/uid/DTS40011742-ReadMe_txt-DontLinkElementID_10).

# Tools

* [travis-ci](https://travis-ci.org/) - Automated unit testing.
* [travis-lint](http://docs.travis-ci.com/user/getting-started/#Validate-Your-.travis.yml) - Local `Travis` settings validation.
* [xctool](https://github.com/facebook/xctool) - Command-line `iOS` build scripts.
* [homebrew](http://brew.sh/) - `OS X` package management, used to install `xctool`.
* [ruby gem](https://rubygems.org/) - `Ruby` package management, used to install `travis-lint`.

# References

* [NSHipster: Method Swizzling](http://nshipster.com/method-swizzling/)
* [Apple Deveoper: Blocks Programming](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/Blocks/Articles/bxDeclaringCreating.html#//apple_ref/doc/uid/TP40007502-CH4-SW1)

# License

&copy; 2014 [Float Mobile Learning](http://floatlearning.com/). Shared under an [MIT license](https://en.wikipedia.org/wiki/MIT_License). See [license.md](./license.md) for details.
