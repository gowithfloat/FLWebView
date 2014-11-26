[FLWebView](https://github.com/floatlearning/FLWebView/) [![Build Status](https://travis-ci.org/floatlearning/FLWebView.svg?branch=master)](https://travis-ci.org/floatlearning/FLWebView) [![Stories in Ready](https://badge.waffle.io/floatlearning/flwebview.png?label=ready&title=Ready)](https://waffle.io/floatlearning/flwebview)
=========

[![](./float-logo.png)](http://floatlearning.com/)

This is an example Xcode project demonstrating how to use WKWebView in iOS 8 with a UIWebView fallback for earlier versions of iOS. A full discussion of this code is available [here](#). Basically, we created a [protocol](http://iosdevelopertips.com/objective-c/the-basics-of-protocols-and-delegates.html) that unifies the functionality we'd like to have in a `WebView`, and then created [categories](http://macdevelopertips.com/objective-c/objective-c-categories.html) that ensure we have the proper methods in our `UIWebView` and `WKWebView` classes. 

These are used in the [ViewController](./FLWebView/ViewController.m) `viewDidLoad` method to create a simple "`FLWebView`" and add it to the active view. The code [checks for `WKWebKit`](https://github.com/floatlearning/FLWebView/blob/master/FLWebView/ViewController.m#L29) and, if present, uses `WKWebView`. If it's not there, it defaults to `UIWebView`.

# Usage

This is an example project but you should be able to build and test it with little setup. Obviously, as this is an iOS project the following steps apply to OS X. You'll need `homebrew` if you don't have it already (just enter this in the terminal):

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

# Tools

* [travis-ci](https://travis-ci.org/) - Automated unit testing.
* [travis-lint](http://docs.travis-ci.com/user/getting-started/#Validate-Your-.travis.yml) - Local `Travis` settings validation.
* [xctool](https://github.com/facebook/xctool) - Command-line `iOS` build scripts.
* [homebrew](http://brew.sh/) - `OS X` package management, used to install `xctool`.
* [ruby gem](https://rubygems.org/) - `Ruby` package management, used to install `travis-lint`.

# License

&copy; 2014 [Float Mobile Learning](http://floatlearning.com/). Shared under an [MIT license](https://en.wikipedia.org/wiki/MIT_License). See [license.md](./license.md) for details.
